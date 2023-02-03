import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_events.freezed.dart';

@freezed
class BooksEvents with _$BooksEvents {
  const factory BooksEvents.getUserBooks() = _FetchUserBooks;
  const factory BooksEvents.answerQuestion() = _AnswerQuestion;

}


