import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Parks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Icon(
              Icons.park,
              size: 90.0,
              color: Colors.lightBlueAccent,
            ),
            Text(
              "PARK",
              style: TextStyle(fontSize: 30.0, color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}
