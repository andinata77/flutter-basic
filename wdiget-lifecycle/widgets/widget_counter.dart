import 'package:flutter/material.dart';

import '../pages/other_page.dart';

class WidgetCounter extends StatefulWidget {
  WidgetCounter({
    Key? key,
    required this.counter,
  }) {
    print("_____________________");
    print("Constructor Widget");
  }

  final int counter;

  @override
  _WidgetCounterState createState() {
    print("createState()");
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  // initState merupakan function lifecycle hanya 1x, ketika class ini dijalankan
  @override
  void initState() {
    super.initState();
    print("initState()");
  }

  // didChangeDependencies dapat dijalankan setelah initState
  // bedanya didChangeDependencies bisa menggunakan context, sedangkan initState tidak ada context
  @override
  void didChangeDependencies() {
    print("didChangeDependencies()");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Old: ${oldWidget.counter}");
    print("didUpdateWidget()");
    print("New: ${widget.counter}");
  }

  @override
  void deactivate() {
    print("deactivate()");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose()");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build()");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.counter}",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.restorablePushReplacementNamed(
                context,
                OtherPage.routeName,
                arguments: widget.counter,
              );
            },
            child: Text("Go to Other Page"),
          ),
        ],
      ),
    );
  }
}
