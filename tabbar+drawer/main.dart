import 'package:flutter/material.dart';

import './flights.dart' as flights;
import './trains.dart' as trains;
import './hotels.dart' as hotels;
import './parks.dart' as parks;
import './foods.dart' as foods;

void main() {
  runApp(MyApp());
}

//karena kita akan menggunakan tabbar maka perlu mengimplementasikan stateful bukan stateless
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //untuk mengahpus banner debug
      debugShowCheckedModeBanner: false,

      //untuk memberi warna hijau pada appbar
      theme: ThemeData.light(),

      //untuk membuat tabcontroller pertama kita menggunakan defaultabcontroller
      home: DefaultTabController(
        //menentukan total tab
        length: 5,

        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Pengaturan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Pesanan'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Pengaturan'),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            // tambahkan tabbar di bawah bottom agar membuat tab bar di bawah title appbar
            bottom: TabBar(
              tabs: [
                //membuat tabbar dengan text
                Tab(icon: Icon(Icons.flight)),

                //membuat tabbar dengan icon
                Tab(icon: Icon(Icons.train)),

                //membuat tabbar dengan text dan icon
                Tab(
                  icon: Icon(Icons.hotel),
                ),

                Tab(icon: Icon(Icons.restaurant)),

                Tab(icon: Icon(Icons.park)),
              ],
              //jika tab bar terlalu panjang dapat discroll ke samping
              isScrollable: true,

              //menentukan padding label sehingga memberikan jarak kiri dan kanan sebesar 30
              labelPadding: EdgeInsets.only(left: 30, right: 30),

              //jika label tidak diselect maka akan diberi warna kuning
              unselectedLabelColor: Colors.white,
              labelColor: Colors.yellow,
            ),

            title: Text('TRAVELIN AJA'),
            centerTitle: true,
          ),

          //gunakanm tabbarview untuk membuat isi dari setiap tab
          //pastikan jumlah tab dan jumlah isi sama agar tidak terjadi error
          //kalian boleh mengisi tabbarview secara custom
          body: TabBarView(
            children: [
              flights.Flights(),
              trains.Trains(),
              hotels.Hotels(),
              foods.Foods(),
              parks.Parks(),
            ],
          ),
        ),
      ),
    );
  }
}
