import 'package:flutter/material.dart';

// SecondPage is a StatelessWidget that displays a button to go back to FirstPage with data.
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'), // Title of the AppBar.
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop this screen and pass data back to FirstPage.
            Navigator.pop(context, 'Hello from Second Page!');
          },
          child: Text('Go back with Data'), // Button text.
        ),
      ),
    );
  }
}