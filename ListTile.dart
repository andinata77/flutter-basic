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
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Andi Nata"),
              subtitle: Text(
                "This is subtitle, Selamat Malam semuanya , selamat datang dikampus UPJ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10:0PM"),
              // onTap: () {
              //   return;
              // },
              // tileColor: Colors.amber,
              // dense: true,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Pak Herdi"),
              subtitle: Text("This is subtitle, ok..."),
              leading: CircleAvatar(),
              trailing: Text("10:0PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Pak Kurnia"),
              subtitle: Text("This is subtitle, ok..."),
              leading: CircleAvatar(),
              trailing: Text("10:0PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Mba Anna"),
              subtitle: Text("This is subtitle, ok..."),
              leading: CircleAvatar(),
              trailing: Text("10:0PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Nadia"),
              subtitle: Text("This is subtitle, ok..."),
              leading: CircleAvatar(),
              trailing: Text("10:0PM"),
            ),
          ],
        ),
      ),
    );
  }
}
