import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/todo_model.dart';

class TodoRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<TodoModel>> getTodos() {
    return _firestore
        .collection('todos')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => TodoModel.fromFirestore(doc)).toList();
    });
  }

  Future<void> addTodo(TodoModel todo) async {
    await _firestore.collection('todos').add(todo.toMap());
  }

  Future<void> updateTodo(TodoModel todo) async {
    await _firestore.collection('todos').doc(todo.id).update(todo.toMap());
  }

  Future<void> deleteTodo(String id) async {
    await _firestore.collection('todos').doc(id).delete();
  }

  Future<void> toggleTodoStatus(String id, bool isCompleted) async {
    await _firestore.collection('todos').doc(id).update({
      'isCompleted': isCompleted,
    });
  }
}
