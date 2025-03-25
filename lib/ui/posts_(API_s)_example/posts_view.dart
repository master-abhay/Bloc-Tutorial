import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_bloc.dart';
import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_event.dart';
import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_state.dart';
import 'package:bloc_tutorial/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/enum.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  void initState() {
    context.read<PostsBloc>().add(GetPostsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: _buildUi(context),
    );
  }

  Widget _buildUi(context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        final ApiStatus apiStatus = state.apiStatus;
        switch (apiStatus) {
          case ApiStatus.initial:
            return const Center(child: Text("Pull down to refresh or show refresh indicator"));
          case ApiStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case ApiStatus.error:
            return  Center(
              child: Text(state.message),
            );
          case ApiStatus.success:
            return Padding(
              padding: kPadding,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search posts..",
                      enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      context.read<PostsBloc>().add(SearchPostsEvent(value));
                    },
                  ),
                  smallHeightSizedBox,
                  state.searchMessage.isNotEmpty ? Expanded(child: Center(child: Text(state.searchMessage))) :
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.searchPostsList.isNotEmpty ? state.searchPostsList.length : state.postsList.length,
                      itemBuilder: (context, index) {
                        var item = state.searchPostsList.isNotEmpty ? state.searchPostsList[index] : state.postsList[index];
                         return Card(
                            elevation: 1,
                            child: ListTile(
                              title: Text(
                                item.title.toString(),
                              ),
                              subtitle: Text(
                                item.body.toString(),
                              ),
                            ),
                          );
                      },
                    ),
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
