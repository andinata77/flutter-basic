FLUTTER


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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text("Aplikasi Flutter Pertama"),
        ),
        body: Center(
          child: Text(
            "Halo, Selamat Datang di Kampus UPJ (Universitas Pembangunan Jaya)",
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 67, 0, 250),
              fontWeight: FontWeight.bold,
              fontSize: 24,
              // letterSpacing: 10,
              // fontFamily: 'Calibri',
              // decorationStyle: TextDecorationStyle.wavy,
              // decoration: TextDecoration.lineThrough,
              // decorationColor: Colors.white,
              // decorationThickness: 2,
            ),
          ),
        ),
      ),
    );
  }
}


// main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessElement {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Column"),
//         ),
//       ),
//     );
//   }
// }
