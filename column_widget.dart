import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
