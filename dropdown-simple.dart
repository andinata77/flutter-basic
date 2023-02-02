import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selected;
  List<String> data = [
    "Joni",
    "Panjul",
    "Sugeng",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton(
          value: selected,
          hint: Text("Pilih Nama"),
          onChanged: (value) {
            print(value);
            setState(() {
              selected = value;
            });
          },
          items: data
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("Halo " + e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
