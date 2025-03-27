import 'package:bloc_tutorial/bloc/movies/movies_bloc.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({super.key});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  late MoviesBloc _moviesBloc;

  @override
  void initState() {
    _moviesBloc = MoviesBloc();
    super.initState();
  }

  @override
  void dispose() {
    _moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesBloc>(
      create: (_) => _moviesBloc
        ..add(
          GetMoviesEvent(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movies View"),
        ),
        body: _buildUi(context),
      ),
    );
  }

  Widget _buildUi(BuildContext context) {
    return BlocConsumer<MoviesBloc,MoviesState>(
      listener: (context,state){
        switch(state.getMoviesModel.apiStatus){
          case ApiStatus.loading:
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("loading"),
                ),
              );;
          case ApiStatus.initial:
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("initial"),
                ),
              );
          case ApiStatus.success:
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("success"),
                ),
              );
          case ApiStatus.error:
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("error"),
                ),
              );
          default:
            Text("Default");
        }
      },
      builder: (context, state) {
        switch(state.getMoviesModel.apiStatus){
          case ApiStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case ApiStatus.initial:
            return const Text("Initial");
          case ApiStatus.success:
            return ListView.builder(
                itemCount: state.getMoviesModel.data?.tvShows.length ?? 0,
                itemBuilder: (context,index){
              return Card(child: ListTile(
                leading: Image.network(state.getMoviesModel.data!.tvShows[index].imageThumbnailPath),
                title: Text(state.getMoviesModel.data!.tvShows[index].name ),
                subtitle: Text(state.getMoviesModel.data!.tvShows[index].network),
                trailing: Text(state.getMoviesModel.data!.tvShows[index].startDate.toString()),
              ));
            });
          case ApiStatus.error:
            return Text(state.getMoviesModel.message.toString());
          default:
            return Text("Default");
        }

      },
    );
  }
}
