import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school/features/book/data/models/book.dart';
import 'package:school/router.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset('book1.png'),
            title:  Text(book.title),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Grade: ${book.grade}',
                  style: TextStyle(color:
                  Colors.black.withOpacity(0.6),
                      height: 2,
                  ),
                ),
                Text(
                  'Type: ${book.type}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6200EE),
                  ),
                ),
                onPressed: () {
                  // Perform some action
                  context.go('/$BOOKS_ROUTE/${book.id}');
                },
                child: const Text('Open Book'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
