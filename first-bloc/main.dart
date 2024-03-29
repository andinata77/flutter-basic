import 'package:flutter/material.dart';
import '../blocs/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterBloc bloc = CounterBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter BLOC"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder(
                stream: bloc.output,
                initialData: bloc.counter,
                builder: (context, snapshot) => Text(
                  "Angka Saat ini: ${snapshot.data}",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      bloc.inputan.add('minus');
                    },
                    icon: Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: () {
                      bloc.inputan.add('add');
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
