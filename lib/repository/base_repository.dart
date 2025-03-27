import 'package:bloc_tutorial/models/get_movies_model/get_movies_model.dart';

import '../models/common_models/common_post_request_model.dart';
import '../models/favourite_item_model.dart';
import '../models/posts_(API_s)/get_posts_model.dart';
import '../network/dio/DioBaseApiServices.dart';
import '../network/dio/DioNetworkApiServices.dart';

abstract class BaseRepository {
  final DioBaseApiServices apiServices = DioNetworkApiServices();

  /// generate favourite items example
  Future<List<FavourItemItemModel>> fetchFavouriteItems();

  /// get posts
  Future<List<GetPostsModel>> getPosts();

  /// login
  Future<CommonPostRequestModel> login({required dynamic body});

  /// get Movies
  Future<GetMoviesModel> getMovies();
}
