import 'package:flutter/material.dart';

class Book with ChangeNotifier {
  final String title;
  final String writer;
  final int rating;
  final String image;
  final int readed;

  Book({
    required this.title,
    required this.writer,
    required this.rating,
    required this.image,
    required this.readed,
  });
}
