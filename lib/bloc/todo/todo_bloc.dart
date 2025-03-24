import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/todo/todo_event.dart';
import 'package:bloc_tutorial/bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todosList = [];

  TodoBloc() : super(const TodoState()) {
    on<AddTodoEvent>(_addTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }

  void _addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    todosList.add(event.todo);

    emit(state.copyWith(todoList: List.from(todosList)));
  }

  void _removeTodo(RemoveTodoEvent event, Emitter<TodoState> emit) {
    todosList.remove(event.todo);
    emit(state.copyWith(todoList: List.from(todosList)));
  }
}
