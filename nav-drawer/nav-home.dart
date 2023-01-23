import 'package:flutter/material.dart';

import './nav-drawer.dart';

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile App"),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Selamat Datang ...',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
