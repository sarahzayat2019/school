import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school/features/book/data/data_source/books_service.dart';
import 'package:school/router.dart';
import 'package:school/screens/home_screen.dart';

import 'features/book/data/models/book.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: appRoutes
    ),

  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'School of Teddy Bears',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router
    );
  }
}
