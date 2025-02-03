import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../data/models/todo_model.dart';
import '../providers/todo_provider.dart';

class EditTodoScreen extends ConsumerWidget {
  final Todo todo;

  const EditTodoScreen({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController(text: todo.title);
    final descriptionController = TextEditingController(text: todo.description);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Todo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isEmpty ||
                    descriptionController.text.isEmpty) {
                  Fluttertoast.showToast(
                    msg: 'Please fill all fields',
                    backgroundColor: Colors.red,
                  );
                  return;
                }

                final updatedTodo = todo.copyWith(
                  title: titleController.text,
                  description: descriptionController.text,
                );

                ref.read(todosProvider.notifier).updateTodo(updatedTodo);

                Fluttertoast.showToast(
                  msg: 'Todo updated successfully',
                  backgroundColor: Colors.green,
                );

                Navigator.pop(context);
              },
              child: const Text('Update Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
