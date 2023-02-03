import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/features/book/bloc/books_bloc/books_bloc.dart';
import 'package:school/features/book/bloc/books_bloc/books_state.dart';

class BooksDetailsScreen extends StatelessWidget {
  const BooksDetailsScreen({super.key, required this.bookId});
  final dynamic bookId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BooksState>(
      builder: (context, state) {
       if (state is Success) {
         final book = state.booksList.firstWhere((element) =>
         element.id == bookId);
         return Text(book.title);
       }
       return const Text('something went wrong');
      },
    );
  }
}
