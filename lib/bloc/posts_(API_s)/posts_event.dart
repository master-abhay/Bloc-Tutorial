import 'package:equatable/equatable.dart';

abstract class PostsEvent extends Equatable {
  const PostsEvent();

  @override
  List<Object?> get props => [];
}

class GetPostsEvent extends PostsEvent {}

class SearchPostsEvent extends PostsEvent {
  final String searchString;

  const SearchPostsEvent(this.searchString);

  @override
  List<Object?> get props => [searchString];
}
