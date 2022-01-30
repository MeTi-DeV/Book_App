import '/providers/book.dart';
import 'package:flutter/cupertino.dart';

class Books with ChangeNotifier {
  final List<Book> items = [
    Book(
        title: 'The Fatal Tree',
        writer: 'by Jake Arnott',
        rating: 4,
        image: 'assets/images/trends/1.png',
        readed: 65),
    Book(
        title: 'Day Four',
        writer: 'by LOTZ, SARAH',
        rating: 4,
        image: 'assets/images/trends/Day_Four.png',
        readed: 25),
    Book(
        title: 'Door to Door',
        writer: 'by Edward Humes',
        rating: 4,
        image: 'assets/images/trends/D2D.png',
        readed: 40),
    Book(
        title: 'Star Trek',
        writer: 'by Edward Humes',
        rating: 4,
        image: 'assets/images/trends/Graphic_Novels.png',
        readed: 31),
  ];
  List<Book> get _items {
    return [...items];
  }

 
}

