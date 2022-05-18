import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.amber,
        fontFamily: 'Lato',

      ),
      home: ProductsOverviewScreen(),
    );
  }
}


