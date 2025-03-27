

import 'package:bloc_tutorial/models/common_models/common_post_request_model.dart';
import 'package:bloc_tutorial/models/favourite_item_model.dart';
import 'package:bloc_tutorial/models/get_movies_model/get_movies_model.dart';
import 'package:bloc_tutorial/models/posts_(API_s)/get_posts_model.dart';
import 'package:bloc_tutorial/network/dio/DioBaseApiServices.dart';
import 'package:bloc_tutorial/network/dio/DioNetworkApiServices.dart';
import 'package:bloc_tutorial/repository/base_repository.dart';
import 'package:flutter/cupertino.dart';

import '../../core/constants/app_urls.dart';

class MockRepository extends BaseRepository {
  @override
  Future<List<FavourItemItemModel>> fetchFavouriteItems() {
    // TODO: implement fetchFavouriteItems
    throw UnimplementedError();
  }

  @override
  Future<GetMoviesModel> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }

  @override
  Future<List<GetPostsModel>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<CommonPostRequestModel> login({required body}) {
    // TODO: implement login
    throw UnimplementedError();
  }

}
