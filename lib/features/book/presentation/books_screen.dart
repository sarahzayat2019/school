import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/features/book/bloc/books_bloc/books_bloc.dart';
import 'package:school/features/book/bloc/books_bloc/books_state.dart';
import 'package:school/features/book/data/models/book.dart';
import 'package:school/features/book/presentation/widgets/book_card.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Books'),
      ),
      body: const BooksListing(),
    );
  }
}

class BooksListing extends StatelessWidget {
  const BooksListing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BooksState>(
      buildWhen: (previousState, state) {
        if (state is Success) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.maybeWhen(
          success: (books) => BookList(books: books),
          failure: (error) => const Text('Something Went wrong'),
          orElse: () => const Text('Loading'),
        );
      },
    );
  }
}

class BookList extends StatelessWidget {
  const BookList({super.key, required this.books});

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (BuildContext context, int index) {
        return BookCard(book: books[index]);
      },
    );
  }
}
