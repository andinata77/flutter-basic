import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text("Media Query"),
    );
    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    color: Colors.red,
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text("Halo Semua..."),
                          );
                        }),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    color: Colors.red,
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text("Halo Semua..."),
                          );
                        }),
                  )
                ],
              ),
      ),
    );
  }
}
