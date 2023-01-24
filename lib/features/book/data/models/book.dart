import 'package:freezed_annotation/freezed_annotation.dart';
import 'chapter.dart';
import 'enums.dart';
part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String title,
    required int grade,
    required List<Chapter> chapters,
    required BookType type,}) = _Book;

factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

 static List<Book> fromJsonList(List<dynamic> data) {
   final booksList = <Book>[];
   for(var book in data) {
     if(book is Map<String, dynamic>) {
       final tempBook = Book.fromJson(book);
       booksList.add(tempBook);
     }
     else {
       print(book.runtimeType);
     }
   }
   return booksList;
 }
}




