import 'package:flutter/material.dart';
import 'package:navigation_pop/second_page.dart';

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{
  String? _returnedData;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async{
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
                setState(() {
                  _returnedData = result;
                });
              },
              child: Text('Go to Second Page'),
            ),
            SizedBox(height: 20),
            Text(
              _returnedData != null ? 'Returned : $_returnedData' : 'No data returned.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}