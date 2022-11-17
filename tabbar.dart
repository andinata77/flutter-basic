import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      // text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
      child: Text("Tab 1"),
    ),
    Tab(
      icon: Icon(Icons.ac_unit_outlined),
      child: Text("Tab 2"),
    ),
    Tab(
      icon: Icon(Icons.access_alarm_outlined),
      child: Text("Tab 3"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Apps"),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              // indicatorColor: Colors.amber,
              // indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(10),
              indicator: BoxDecoration(
                color: Colors.amber,
                // borderRadius: BorderRadius.circular(50),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
