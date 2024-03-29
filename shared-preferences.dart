import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool isDark = false;

//fungsi untuk menyimpan
//inisiasi awal untuk memasukan data dari local ke aplikasi / jembatan
  Future<void> setPreference() async {
    final jembatan = await SharedPreferences.getInstance();
    if (jembatan.containsKey('myData')) {
      jembatan.clear();
    }

    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    jembatan.setString('myData', myData);
    setState(() {});
  }

  Future<void> getPreference() async {
    final jembatan = await SharedPreferences.getInstance();
    if (jembatan.containsKey('myData')) {
      final myData = json.decode(jembatan.getString('myData') ?? '')
          as Map<String, dynamic>;

      counter = int.parse(myData["counter"]);
      isDark = myData["isDark"] == "true" ? true : false;
    }
  }

//fungsi mengurangi
  void minus() {
    counter = counter - 1;
    setPreference();
  }

//fungsi menambahkan
  void add() {
    counter = counter + 1;
    setPreference();
  }

//fungsi merubah tema
  void changeTheme() {
    isDark = !isDark;
    setPreference();
  }

//membuat clear
  void refresh() {
    counter = 0;
    isDark = false;
    setPreference();
  }

//buat tema
  ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    primarySwatch: Colors.amber,
    accentColor: Colors.amber,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: BorderSide(
          color: Colors.white,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  );
  ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    primarySwatch: Colors.amber,
    accentColor: Colors.amber,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPreference(),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? dark : light,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Counter Apps"),
            actions: [
              IconButton(
                onPressed: refresh,
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Angka saat ini adalah: $counter",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: minus,
                      child: Icon(Icons.remove),
                    ),
                    OutlinedButton(
                      onPressed: add,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: changeTheme,
            child: Icon(
              Icons.color_lens,
            ),
          ),
        ),
      ),
    );
  }
}
