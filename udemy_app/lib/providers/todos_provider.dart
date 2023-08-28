import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/config/config.dart';
import 'package:udemy_app/domain/entities/todo.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

//This is the state of the Notifier
class TodosNotifier extends StateNotifier<List<Todo>>{
  TodosNotifier(): super([
    Todo(
      id:_uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: null,
    ),
    Todo(
      id:_uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: null,
    ),
    Todo(
      id:_uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: DateTime.now(),
    ),
    Todo(
      id:_uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: null,
    ),
  ]);

  void addTodo(){
    state = [
      ...state,
      Todo(
      id:_uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: null,
    ),
    ];
  }

  void toggleTodo(String id){
    state = state.map((todo) {
      if(todo.id != id) return todo;
      if(todo.done) return todo.copyWith(completedAt: null);
      return todo.copyWith(completedAt: DateTime.now());
    }).toList();
  }

}
