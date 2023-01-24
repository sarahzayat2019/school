import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/features/book/bloc/books_events.dart';
import 'package:school/features/book/bloc/books_state.dart';
import 'package:school/features/book/data/data_source/books_service.dart';


class BooksBloc extends Bloc<BooksEvents, BooksState> {
  BooksBloc(this._booksService) :  super(const Initial()) {
    on<BooksEvents>(_onBooksEvents);
  }
  final BooksService _booksService;
  Future<void> _onGetUserBooks(BooksEvents event, Emitter<BooksState> emit)
  async {
    try {
      emit(const Loading());
      final books = await _booksService.getBooks();
      emit(Success(books));
    } catch (e) {
      emit(Failure(e.toString()));
    }
  }

  Future<void> _onBooksEvents(BooksEvents event, Emitter<BooksState> emit)
  async {
    event.when(
        getUserBooks: () => _onGetUserBooks,
    );
  }
}


