import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}
