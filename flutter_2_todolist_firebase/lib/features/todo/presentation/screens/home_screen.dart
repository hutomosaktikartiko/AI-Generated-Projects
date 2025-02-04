import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/todo_provider.dart';
import '../widgets/todo_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosStream = ref.watch(todoNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: todosStream.when(
        data: (todos) {
          if (todos.isEmpty) {
            return const Center(
              child: Text('No todos yet. Add one!'),
            );
          }
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) => TodoItem(todo: todos[index]),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
