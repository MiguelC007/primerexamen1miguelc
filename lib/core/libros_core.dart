import 'package:flutter/material.dart';
import 'package:primerexamen1_miguelc/models/libro.dart';
import 'package:primerexamen1_miguelc/services/api_service.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  List<Book> _books = [];
  List<Book> get books => _books;
  void fetchBook() async {
    _books = await _bookService.getBooks();
    notifyListeners();
  }
}