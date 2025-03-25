import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:equatable/equatable.dart';

import '../../models/posts_(API_s)/get_posts_model.dart';

class PostsState extends Equatable {
  final ApiStatus apiStatus;
  final List<GetPostsModel> postsList;
  final List<GetPostsModel> searchPostsList;
  final String message;
  final String searchMessage;

  const PostsState({
    this.postsList = const <GetPostsModel>[],
    this.searchPostsList = const <GetPostsModel>[],
    this.apiStatus = ApiStatus.loading,
    this.message = '',
    this.searchMessage = '',
  });

  PostsState copyWith({List<GetPostsModel>? postsList,List<GetPostsModel>? searchPostsList, ApiStatus? apiStatus, String? message,String? searchMessage}) {
    return PostsState(
      postsList: postsList ?? this.postsList,
      searchPostsList: searchPostsList ?? this.searchPostsList,
      apiStatus: apiStatus ?? this.apiStatus,
      message: message ?? this.message,
      searchMessage: searchMessage ?? this.searchMessage,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
        postsList,
        searchPostsList,
        message,
        searchMessage,
      ];
}
