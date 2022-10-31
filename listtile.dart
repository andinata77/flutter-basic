import 'dart:ui';

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
        appBar: AppBar(title: Text('LisTile')),
        body: ListView(
          children: [
            ListTile(
              title: Text(
                "UPJ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                "Universitas Pembangunan Jaya",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/news1.jpg"),
                ),
              ),
              trailing: Text('15:29PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "UIN",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                " Universitas Islam Negeri",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/news2.jpg"),
                ),
              ),
              trailing: Text('15:29PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "UNPAS",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                "Universitas Pasundan Bandung",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/news3.jpg"),
                ),
              ),
              trailing: Text('15:29PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "UI",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                "Universitas Indonesia",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/news4.jpg"),
                ),
              ),
              trailing: Text('15:29PM'),
            ),
          ],
        ),
      ),
    );
  }
}
