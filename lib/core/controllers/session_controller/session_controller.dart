import 'dart:convert';
import 'package:bloc_tutorial/core/services/storage_services/base_storage_services.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/common_models/common_post_request_model.dart';
import '../../services/service_locator.dart';
import 'base_session_controller.dart';

class SessionController extends BaseSessionController{
  @override
  Future<void> saveSessionData({required dynamic userData}) async{
    try{

     bool result =  await getIt<BaseStorageServices>().saveValue(key: 'userData', value: jsonEncode(userData));
     bool result1 =  await getIt<BaseStorageServices>().saveValue(key: 'isLoggedIn', value: 'true');
     if(result && result1){
       isLoggedIn = true;
       userModel = CommonPostRequestModel.fromJson(userData);
     }
    }catch(e){
      debugPrint("Something went wrong while writing session data");
    }
  }

  @override
  Future<bool> clearSessionData() async{
    try{
     final result =  await getIt<BaseStorageServices>().deleteAllValues();
     if(result){
       isLoggedIn = false;
       userModel = null;
       return true;
     }
     return false;
    }catch(e){
      debugPrint("Something went wrong while clearing session data");
      return false;
    }
  }

  @override
  Future<bool> getSessionData() async {
    try {
      final isLoggedInValue = await getIt<BaseStorageServices>().getValue(key: 'isLoggedIn');
      if (isLoggedInValue?.toLowerCase() == 'true') {
        final userData = await getIt<BaseStorageServices>().getValue(key: 'userData');
        if (userData != null) {
          isLoggedIn = true;
          userModel = CommonPostRequestModel.fromJson(jsonDecode(userData));
          return true;
        }
      }
      return false;
    } catch (e, stackTrace) {
      debugPrint("Error in getSessionData: $e\n$stackTrace");
      return false;
    }
  }
}

