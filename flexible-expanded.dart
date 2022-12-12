import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expanded"),
      ),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            // flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Text 1"),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Text("Text 1"),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.amber,
              child: Text("Text 1"),
            ),
          ),
        ],
      ),
    );
  }
}
