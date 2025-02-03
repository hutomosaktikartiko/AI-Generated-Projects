import 'package:uuid/uuid.dart';

class Todo {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  final bool isCompleted;

  Todo({
    String? id,
    required this.title,
    required this.description,
    DateTime? createdAt,
    this.isCompleted = false,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now();

  Todo copyWith({
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Todo(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
