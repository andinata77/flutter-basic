import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swicth"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // height: 10,
              // width: 1000,
              color: Colors.grey,
              child: Switch(
                activeColor: Colors.amber,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.indigo,
                inactiveTrackColor: Colors.red,
                activeThumbImage: AssetImage("images/true.png"),
                inactiveThumbImage: AssetImage("images/false.png"),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                },
              ),
            ),
            Text(
              (statusSwitch == true) ? "Switch On" : "Switch Off",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
