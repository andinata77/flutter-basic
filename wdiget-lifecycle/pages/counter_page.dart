import 'package:flutter/material.dart';

import '../widgets/widget_counter.dart';

class CounterPage extends StatefulWidget {
  static const routeName = "/counter-page";
  CounterPage() {
    print("================");
    print("Constructor Counter Page");
  }
  @override
  _CounterPageState createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void didChangeDependencies() {
    final int? numberState = ModalRoute.of(context)!.settings.arguments as int?;
    if (numberState != null) {
      counter = numberState;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
