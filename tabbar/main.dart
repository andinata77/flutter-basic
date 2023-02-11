import 'package:flutter/material.dart';

import './email.dart' as email;
import './music.dart' as music;
import './shopping.dart' as shopping;
import './telepon.dart' as telepon;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tampilan Tab Bar",
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller tabBar
  TabController? controller;
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    //tambahkan SingleTickerProviderStateMixin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("Tampilan Home"),
        centerTitle: true,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.email),
              text: "Email",
            ),
            new Tab(
              icon: new Icon(Icons.queue_music),
              text: "Music",
            ),
            new Tab(
              icon: new Icon(Icons.shopping_cart),
              text: "Shop",
            ),
            new Tab(
              icon: new Icon(Icons.phone_android),
              text: "Phone",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new email.Email(),
          new music.Music(),
          new shopping.Shopping(),
          new telepon.Telepon(),
        ],
      ),
    );
  }
}
