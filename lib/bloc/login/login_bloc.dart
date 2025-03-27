
import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:bloc_tutorial/core/controllers/session_controller/base_session_controller.dart';
import 'package:bloc_tutorial/core/controllers/session_controller/session_controller.dart';
import 'package:bloc_tutorial/models/common_models/common_post_request_model.dart';
import 'package:bloc_tutorial/repository/base_repository.dart';
import 'package:bloc_tutorial/repository/repositories/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../core/services/service_locator.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {


  LoginBloc() : super(const LoginState()) {
    on<LoginButtonEvent>(_login);
  }

  void _login(LoginButtonEvent event, Emitter<LoginState> emit)async{
    try{
      /// set api state to loading
      emit(state.copyWith(message: "Logging in..",apiStatus: ApiStatus.loading));


      /// make api call
     CommonPostRequestModel response =  await getIt<BaseRepository>().login(body: {'email':event.email,'password':event.password});

     /// save session data
      getIt<BaseSessionController>().saveSessionData(userData: response);
      

      /// set api state to success
      emit(state.copyWith(message: 'Login Success',apiStatus: ApiStatus.success));
    }catch (e, stackTrace){
      debugPrint("Error: ${e.toString()}");
      /// set api state to error
      emit(state.copyWith(message:e.toString(),apiStatus: ApiStatus.error));
    }

  }
}
