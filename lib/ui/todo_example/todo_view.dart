import 'package:bloc_tutorial/bloc/todo/todo_bloc.dart';
import 'package:bloc_tutorial/bloc/todo/todo_event.dart';
import 'package:bloc_tutorial/bloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo View"),
      ),
      body: _buildUi(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_alert),
        onPressed: () {
          for(int i = 1; i <20; i++){
            context.read<TodoBloc>().add( AddTodoEvent(todo: "New Todo ${i.toString()}"));
          }
        },
      ),
    );
  }

  Widget _buildUi(context) {
    return BlocBuilder<TodoBloc, TodoState>(
        buildWhen: (previous,current) => previous.todoList != current.todoList,
        builder: (context, state) {
      if (state.todoList.isNotEmpty) {
        debugPrint("Building");
        return ListView.builder(
          itemCount: state.todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: index % 2 == 0 ? Colors.grey : Colors.blueGrey,
              title: Text(state.todoList[index]),
              trailing: IconButton(
                  onPressed: () {
                    context.read<TodoBloc>().add(RemoveTodoEvent(todo: state.todoList[index]));
                  },
                  icon: const Icon(Icons.delete_outline_outlined)),
            );
          },
        );
      } else {
        return const Center(child: Text("You have no todo's"));
      }

      ;
    });
  }
}
