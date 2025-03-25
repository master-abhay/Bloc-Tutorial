import 'package:bloc_tutorial/bloc/counter/counter_bloc.dart';
import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_bloc.dart';
import 'package:bloc_tutorial/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_tutorial/bloc/posts_(API_s)/posts_bloc.dart';
import 'package:bloc_tutorial/bloc/switch_and_slider/switch_bloc.dart';
import 'package:bloc_tutorial/bloc/todo/todo_bloc.dart';
import 'package:bloc_tutorial/repository/repository.dart';
import 'package:bloc_tutorial/ui/counter_example/counter_view.dart';
import 'package:bloc_tutorial/ui/favourite_items_example/favourite_items_view.dart';
import 'package:bloc_tutorial/ui/image_picker_example/image_picker_view.dart';
import 'package:bloc_tutorial/ui/posts_(API_s)_example/posts_view.dart';
import 'package:bloc_tutorial/ui/todo_example/todo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_)=>CounterBloc()),
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => ImagePickerBloc()),
        BlocProvider(create: (_) => TodoBloc()),
        BlocProvider(create: (_) => FavouriteItemsBloc(Repository())),
        BlocProvider(create: (_) => PostsBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Tutorial',
        // themeMode: ThemeMode.dark,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          // brightness: Brightness.dark
        ),
        // home: const PostsView(),
        // home: const FavouriteItemsView(),
        // home: const TodoView(),
        // home: const ImagePickerView(),
        // home: const SwitchAndSliderExample(),
        home: const CounterView(),
      ),
    );
  }
}
