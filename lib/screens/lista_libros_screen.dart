import 'package:flutter/material.dart';
import 'package:primerxamen1miguelc/providers/libros_provider.dart';
import 'package:provider/provider.dart';

import 'detalle_libros_screen.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<BookListProvider>(context, listen: false).fetchBook());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Libros'),
      ),
      body: Consumer<BookListProvider>(
        builder: (context, bookListProvider, child) {
          if (bookListProvider.books.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: bookListProvider.books.length,
            itemBuilder: (context, index) {
              final book = bookListProvider.books[index];
              return ListTile(
                title: Text(book.title),
                subtitle: Text(book.description),
                leading: Image.network(
                  'https://mewmagazine.es/wp-content/uploads/2020/06/mientras-escribo-1-768x1165.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bookDetailScreen(book: book),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}