import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:school/features/book/presentation/books_details_screen.dart';
import 'package:school/features/book/presentation/books_screen.dart';

List<RouteBase> appRoutes = <RouteBase>[
  GoRoute(
    path: 'books',
    builder: (BuildContext context, GoRouterState state) {
      return const BooksScreen();
    },
  ),
  GoRoute(
    path: 'books/:id',
    builder: (BuildContext context, GoRouterState state) {
      return  const BooksDetailsScreen();
    },
  ),
];


