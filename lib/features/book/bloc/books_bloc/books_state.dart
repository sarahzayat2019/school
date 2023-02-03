import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/book.dart';
part 'books_state.freezed.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial({@Default([]) List<Book> booksList}) =
  Initial;
  const factory BooksState.loading() = Loading;
  const factory BooksState.success(List<Book> booksList) = Success;
  const factory BooksState.failure(String error) = Failure;

  const factory BooksState.selectedBook(Book book) = SelectedBook;
}
