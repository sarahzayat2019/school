// Class to deal with network requests
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/book.dart';

class BooksService {
  Future<List<Book>> getBooks() async {
    try {
      final response = await rootBundle.loadString('books_mock_api.json');
      final parsed = await jsonDecode(response);
      final books = Book.fromJsonList(parsed['result'] as List);
      return books;
    } catch (e) {
      throw Exception(e);
    }
  }
}
