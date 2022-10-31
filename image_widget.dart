import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Widget')),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.asset(
              'images/news1.jpg',
              fit: BoxFit.contain,
            ),
            // child: Image(
            //   fit: BoxFit.contain,
            //   image: AssetImage('images/news1.jpg'),
            //   image: NetworkImage("https://picsum.photos/300/300"),
            // ),
          ),
        ),
      ),
    );
  }
}
