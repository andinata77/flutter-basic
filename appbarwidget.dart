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
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 50,
          title: Container(
            // width: 35, akan menyesuaikan
            height: 35,
            color: Colors.red,
          ),
          // titleSpacing: 0,
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              // height: 10000,  akan menyesuaikan
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 10000,  akan menyesuaikanada
              color: Colors.black,
            ),
            Container(
              width: 50,
              // height: 10000,  akan menyesuaikan
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 10000,  akan menyesuaikan
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Center(
            child: Text(
              "FLEXIBLE SPACE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
