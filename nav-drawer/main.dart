import 'package:flutter/material.dart';
import './nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "BelajarFlutter.com",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Drawer Nav"),
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
          child: Text('Belajar Navigation Drawer di Flutter',
              style: TextStyle(fontSize: 20))),
    );
  }
}
