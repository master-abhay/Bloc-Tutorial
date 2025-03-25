import 'package:bloc_tutorial/models/common_models/common_post_request_model.dart';
import 'package:bloc_tutorial/models/favourite_item_model.dart';
import 'package:bloc_tutorial/models/posts_(API_s)/get_posts_model.dart';
import 'package:bloc_tutorial/network/dio/DioBaseApiServices.dart';
import 'package:bloc_tutorial/network/dio/DioNetworkApiServices.dart';
import 'package:flutter/cupertino.dart';

import '../core/constants/app_urls.dart';

class Repository {

  final DioBaseApiServices _apiServices = DioNetworkApiServices();


  Future<List<FavourItemItemModel>> fetchFavouriteItems() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.of(_generateListOfFavouriteItem(20));
  }

  List<FavourItemItemModel> _generateListOfFavouriteItem([int length = 10]) {
    return List.generate(length, (index) {
      return FavourItemItemModel(
          id: index, title: "Title $index", description: "Description $index");
    });
  }




  /// get posts
  Future<List<GetPostsModel>> getPosts() async {
   try{
     final response = await _apiServices.dioGetApiService(url: AppUrls.getPosts, headers: {},);
     return List.from(response.map((element)=>GetPostsModel.fromJson(element)).toList());
   }catch(e){
     debugPrint(e.toString());
     return [];
   }
  }

  /// login
  Future<CommonPostRequestModel> login({required dynamic body}) async {
    try {
      final response = await _apiServices.dioPostApiService(
        url: AppUrls.login,
        headers: {},
        body: body,
      );
      return CommonPostRequestModel.fromJson(response);
    } catch (e, stackTrace) {
      debugPrint('Error in login: $e');
      debugPrint('StackTrace: $stackTrace');
      throw e;
    }
  }

}
