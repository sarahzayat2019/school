import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school/features/book/bloc/books_bloc/books_bloc.dart';
import 'package:school/features/book/bloc/books_bloc/books_events.dart';
import 'package:school/features/book/data/data_source/books_repository.dart';
import 'package:school/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BooksBloc>(
          create: (BuildContext context) =>
            BooksBloc(BooksRepository())..add(
                const BooksEvents.getUserBooks(),),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

final _router = GoRouter(
  routes: appRoutes,
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
      routerConfig: _router,
    );
  }
}
