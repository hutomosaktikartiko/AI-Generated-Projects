import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/todo_model.dart';

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier() : super([]);

  void addTodo(Todo todo) {
    state = [...state, todo];
  }

  void removeTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }

  void updateTodo(Todo updatedTodo) {
    state = state.map((todo) {
      return todo.id == updatedTodo.id ? updatedTodo : todo;
    }).toList();
  }

  void toggleTodoStatus(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
  }
}
