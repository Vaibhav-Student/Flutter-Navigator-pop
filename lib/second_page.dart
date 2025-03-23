import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello from Second Page!');
          },
          child: Text('Go back with Date'),
         ),
      ),
    );
  }
}