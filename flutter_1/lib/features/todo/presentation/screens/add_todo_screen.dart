import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../data/models/todo_model.dart';
import '../providers/todo_provider.dart';

class AddTodoScreen extends ConsumerWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
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

                final newTodo = Todo(
                  title: titleController.text,
                  description: descriptionController.text,
                );

                ref.read(todosProvider.notifier).addTodo(newTodo);

                Fluttertoast.showToast(
                  msg: 'Todo added successfully',
                  backgroundColor: Colors.green,
                );

                Navigator.pop(context);
              },
              child: const Text('Add Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
