import 'package:flutter/material.dart';
import 'package:navigation_pop/first_page.dart';

// The main function is the entry point of the Flutter application.
void main() {
  runApp(MyApp());
}

// MyApp is a StatelessWidget that sets up the MaterialApp.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator.pop() Example',
      home: FirstPage(), // Sets the home screen of the app to FirstScreen.
    );
  }
}

