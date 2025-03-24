


import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable{

  const TodoEvent();

  @override
  List<Object?> get props => [];
}


class AddTodoEvent extends TodoEvent{

  final String todo;

  const AddTodoEvent({required this.todo});


  @override
  List<Object?> get props => [todo];
}
class RemoveTodoEvent extends TodoEvent{
  final String todo;

  const RemoveTodoEvent({required this.todo});

  @override
  List<Object?> get props => [todo];

}