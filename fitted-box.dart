import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FittedBox"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 100,
            child: FittedBox(
              child: Text("Haloooooooooooooooooooooooooooooo"),
            ),
          ),
        ),
      ),
    );
  }
}
