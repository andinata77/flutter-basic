import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const nameRoute = '/photopage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Page"),
        // leading: Container(),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "PHOTO PAGE",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text("<< Back")),
                TextButton(onPressed: () {}, child: Text("Next >>")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
