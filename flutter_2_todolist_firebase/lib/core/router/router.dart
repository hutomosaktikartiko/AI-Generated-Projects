import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/todo/data/models/todo_model.dart';
import '../../features/todo/presentation/screens/add_screen.dart';
import '../../features/todo/presentation/screens/edit_screen.dart';
import '../../features/todo/presentation/screens/home_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => const AddScreen(),
    ),
    GoRoute(
      path: '/edit',
      builder: (context, state) {
        final todo = state.extra as TodoModel;
        return EditScreen(todo: todo);
      },
    ),
  ],
);
