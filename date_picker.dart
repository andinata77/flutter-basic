import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectDate.toString(),
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: selectDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
                // initialEntryMode: DatePickerEntryMode.calendar,
                // initialDatePickerMode: DatePickerMode.day,
                // selectableDayPredicate: (day) {
                //   if ((day.isAfter(
                //           DateTime.now().subtract(Duration(days: 5)))) &&
                //       (day.isBefore(DateTime.now().add(Duration(days: 2))))) {
                //     return true;
                //   }
                //   return false;
                // },
                helpText: "Help Text",
                cancelText: "Batal",
                confirmText: " Simpan",
                fieldHintText: "Masukan Tanggal",
                fieldLabelText: "Silahkan input",
                errorInvalidText: "Gagal",
                errorFormatText: "format salah",
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.dark(),
                    child: child!,
                  );
                },
              ).then(
                (value) {
                  setState(
                    () {
                      selectDate = value!;
                    },
                  );
                },
              );
            },
            child: Text("Date Picker"),
          ),
        ],
      )),
    );
  }
}
