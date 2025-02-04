import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/models/todo_model.dart';
import '../data/repositories/todo_repository.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  late final TodoRepository _repository = TodoRepository();

  @override
  Stream<List<TodoModel>> build() {
    return _repository.getTodos();
  }

  Future<void> addTodo(String title, String description) async {
    final todo = TodoModel(
      id: '',
      title: title,
      description: description,
      createdAt: DateTime.now(),
      isCompleted: false,
    );
    await _repository.addTodo(todo);
  }

  Future<void> updateTodo(TodoModel todo) async {
    await _repository.updateTodo(todo);
  }

  Future<void> deleteTodo(String id) async {
    await _repository.deleteTodo(id);
  }

  Future<void> toggleTodoStatus(String id, bool isCompleted) async {
    await _repository.toggleTodoStatus(id, isCompleted);
  }
}
