import 'package:flutter/material.dart';
import 'package:primerxamen1_miguelc/libros_provider.dart';
import 'package:primerxamen1_miguelc/screens/lista_libros_screen.dart';
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
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Stephen King Libreria'),
          ),
          body:
              BookListScreen(), // Ensure bookListScreen is embedded within a Material widget
        ),
      ),
    );
  }
}