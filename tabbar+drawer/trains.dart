import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Trains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Icon(
              Icons.train,
              size: 90.0,
              color: Colors.lightBlueAccent,
            ),
            Text(
              "TRAIN",
              style: TextStyle(fontSize: 30.0, color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}
