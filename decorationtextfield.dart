import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dekorasi Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              showCursor: true,
              cursorColor: Colors.red,
              // cursorWidth: 20,
              // cursorRadius: Radius.circular(50),
              // cursorHeight: 50,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,
              style: TextStyle(color: Colors.red, fontSize: 20),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  size: 35,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                
                // prefixIcon: Icon(
                //   Icons.person_add,
                //   size: 35,
                // ),
                // prefixText: "Name:",
                // prefix: Icon(
                //   Icons.person_add,
                //   size: 35,
                // ),
                hintText: "Please input yout name",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                labelText: "Full Name",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
