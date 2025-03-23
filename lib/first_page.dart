import 'package:flutter/material.dart';
import 'package:navigation_pop/second_page.dart';

// FirstPage is a StatefulWidget that displays a button to navigate to SecondPage.
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

// The state for FirstPage.
class _FirstPageState extends State<FirstPage> {
  String? _returnedData; // Variable to store data returned from SecondPage.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'), // Title of the AppBar.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Navigate to SecondPage and wait for result.
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
                // Update the state with the returned data.
                setState(() {
                  _returnedData = result;
                });
              },
              child: Text('Go to Second Page'), // Button text.
            ),
            SizedBox(height: 20), // Adds space between the button and the text.
            Text(
              _returnedData != null ? 'Returned: $_returnedData' : 'No data returned.',
              style: TextStyle(fontSize: 18), // Text style.
            ),
          ],
        ),
      ),
    );
  }
}