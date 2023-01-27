import 'package:flutter/cupertino.dart';

class BooksDetailsScreen extends StatelessWidget {
  const BooksDetailsScreen({super.key, required this.bookId});
  final dynamic bookId;

  @override
  Widget build(BuildContext context) {
    return Text('this is the books screen');
  }
}
