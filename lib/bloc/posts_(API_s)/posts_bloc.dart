import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_event.dart';
import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_state.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:bloc_tutorial/models/posts_(API_s)/get_posts_model.dart';

import '../../repository/repository.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {

  final Repository repository = Repository();

  PostsBloc() : super(const PostsState()){
    on<GetPostsEvent>(_getPosts);
    on<SearchPostsEvent>(_searchPost);
  }


  /// fetch posts
  _getPosts(GetPostsEvent event, Emitter<PostsState> emit)async{
    try{
     emit(state.copyWith(apiStatus: ApiStatus.completed,message: "Success",postsList:  await repository.getPosts(),),);
    }
    catch(e){
      emit(state.copyWith(apiStatus: ApiStatus.error,message: e.toString(),),);
    }
  }

  /// search posts locally
  _searchPost(SearchPostsEvent event, Emitter<PostsState> emit){
    if(event.searchString.trim().isEmpty){
      emit(state.copyWith(searchPostsList: [],searchMessage: "No post found"),);
    }
    final searchedPosts = state.postsList.where((element)=> (element.title!.toString().toLowerCase().contains(event.searchString) || element.body!.toString().toLowerCase().contains(event.searchString)  || element.id.toString().toLowerCase().contains(event.searchString) ||  element.userId.toString().toLowerCase().contains(event.searchString)),).toList();
   if(searchedPosts.isEmpty){
     emit(state.copyWith(searchPostsList: [],searchMessage: "No post found"),);
   }else{
     emit(state.copyWith(searchPostsList: searchedPosts,searchMessage: ''),);
   }
  }
}
