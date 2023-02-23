import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
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
              Icons.restaurant,
              size: 90.0,
              color: Colors.lightBlueAccent,
            ),
            Text(
              "FOOD",
              style: TextStyle(fontSize: 30.0, color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}
