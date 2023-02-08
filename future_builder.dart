import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getData() async {
    //get data from api
    var dataJson = await http.get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'));

    //convert data string to array object
    var data = jsonDecode(dataJson.body);

    //return data
    return data['meals'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Future Builder & Indicator Process'),
            ),
            body: FutureBuilder(
              //method to be waiting for in the future
              future: getData(),
              builder: (_, snapshot) {
                //if done show data,
                if (snapshot.connectionState == ConnectionState.done) {
                  print(snapshot.data);
                  var list = snapshot.data as List;
                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.all(8),
                          leading: Image.network(list[index]['strMealThumb']),
                          title: Text(list[index]['strMeal']),
                        );
                      });
                } else {
                  //if the process is not finished then show the indicator process
                  return Center(child: CircularProgressIndicator());
                }
              },
            )));
  }
}
