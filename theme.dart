import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity(horizontal: 3, vertical: 4),
        //
        // primarySwatch: Colors.amber,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3,
        //   <int, Color>{
        //     50: Color(0x1a5D4524),
        //     100: Color(0xa15D4524),
        //     200: Color(0xaa5D4524),
        //     300: Color(0xaf5D4524),
        //     400: Color(0x1a483112),
        //     500: Color(0xa1483112),
        //     600: Color(0xaa483112),
        //     700: Color(0xff483112),
        //     800: Color(0x1af2F1E06),
        //     900: Color(0xff2F1E06),
        //   },
        // ),
        // accentColor: Colors.green,
        // textTheme: TextTheme(
        //   bodyText2: TextStyle(
        //     color: Colors.red,
        //   ),
        // ),
        // appBarTheme: AppBarTheme(
        //   color: Colors.green,
        //   titleTextStyle: TextStyle(
        //     color: Colors.amber,

        //   ),
        // ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " This is a text",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            Text(
              " This is a text",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Button",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
