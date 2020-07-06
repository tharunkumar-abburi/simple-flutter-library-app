import 'package:flutter/material.dart';
import 'package:libraryapp1/pages/root_page.dart';
import 'package:libraryapp1/services/authentication.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Library assist',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
