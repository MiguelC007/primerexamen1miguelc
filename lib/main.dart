import 'package:flutter/material.dart';
import 'package:primerxamen1miguelc/core/libros_provider.dart';
import 'package:primerxamen1miguelc/screens/lista_libros_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookListProvider()),
      ],
      child: MaterialApp(
        title: 'Stephen King Library',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Libreria de Stephen King'),
          ),
          body:
              BookListScreen(), // Ensure bookListScreen is embedded within a Material widget
        ),
      ),
    );
  }
}