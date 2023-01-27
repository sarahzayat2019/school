import 'package:school/features/book/data/models/book.dart';
import 'package:school/features/book/data/data_source/books_service.dart';

class BooksRepository {
  BooksRepository({BooksService ? booksService}) : _booksService = booksService
      ?? BooksService();

  final BooksService _booksService;
  Future<List<Book>> getBooks() async {
    try {
      final books = await _booksService.getBooks();
      return books;
    } catch (e) {
      throw Exception(e);
    }
  }
}
