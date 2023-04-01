import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './providers/auth.dart';

import './pages/home_page.dart';
import './pages/auth_page.dart';
import './pages/add_product_page.dart';
import './pages/edit_product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Authh(),
        ),
        ChangeNotifierProxyProvider<Authh, Products>(
          create: (context) => Products(),
          update: (context, authh, products) =>
              products!..updateData(authh.token, authh.userId),
        ),
      ],
      builder: (context, child) => Consumer<Authh>(
        builder: (context, authh, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: authh.isAuthh ? HomePage() : LoginPage(),
          routes: {
            AddProductPage.route: (ctx) => AddProductPage(),
            EditProductPage.route: (ctx) => EditProductPage(),
          },
        ),
      ),
    );
  }
}
