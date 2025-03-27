import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/models/get_movies_model/get_movies_model.dart';
import 'package:bloc_tutorial/network/api_response.dart';
import 'package:bloc_tutorial/repository/base_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../core/services/service_locator.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesState(getMoviesModel: ApiResponse.initial())) {
    on<GetMoviesEvent>(_getMovies);
  }


  void _getMovies(GetMoviesEvent event, Emitter<MoviesState> emit)async{
    try{
      emit(state.copyWith(getMoviesModel: ApiResponse.loading()));

      final response = await getIt<BaseRepository>().getMovies();

      emit(state.copyWith(getMoviesModel: ApiResponse.success(data: response)));
    }catch(e){
      debugPrint(e.toString());
      emit(state.copyWith(getMoviesModel: ApiResponse.error(message: e.toString())));
    }
  }
}
