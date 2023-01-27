import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/features/book/bloc/books_events.dart';
import 'package:school/features/book/bloc/books_state.dart';
import 'package:school/features/book/data/data_source/books_repository.dart';

class BooksBloc extends Bloc<BooksEvents, BooksState> {
  BooksBloc(this._booksRepository) : super(const Initial()) {
    on<BooksEvents>((event, emit) async {

      await event.when(
          getUserBooks: ()  => _onGetUserBooks(event, emit));
    });
  }
  @override
  void onChange(Change<BooksState> change) {
    // Trigger on any change on the BLoC
    super.onChange(change);
    print(change);
  }

  final BooksRepository _booksRepository;

  Future<void> _onGetUserBooks(
    BooksEvents event,
    Emitter<BooksState> emit,
  ) async {
    final completer = Completer<void>(); // signals when the event
    try {
      // emit(const Loading());
      final books = await _booksRepository.getBooks();
      emit(Success(books));
    } catch (e) {
      emit(Failure(e.toString()));
    }
    completer.complete();
  }
}
