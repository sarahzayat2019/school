import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:school/features/book/presentation/books_details_screen.dart';
import 'package:school/features/book/presentation/books_screen.dart';
import 'package:school/screens/home_screen.dart';

const BOOKS_ROUTE = 'books';
const HOME_ROUTE = '/';

List<RouteBase> appRoutes = <RouteBase>[
  GoRoute(
      path: HOME_ROUTE,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: BOOKS_ROUTE,
          builder: (BuildContext context, GoRouterState state) {
            return const BooksScreen();
          },
          routes: []
        ),
        GoRoute(
          path: '$BOOKS_ROUTE/:bookId',
          builder: (context, state) {
            return BooksDetailsScreen(bookId: state.params['bookId']);
          },
        ),
      ]
  ),

];


