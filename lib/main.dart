import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/order_screen.dart';
import 'package:shop_app/screens/product_detail.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => Products()),
        ),
        ChangeNotifierProvider(
          create: ((context) => Cart()),
        ),
        ChangeNotifierProvider(
          create: (context) => Orders()
          ),
        // create: (context) => Products(),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        routes: {
          ProductDetail.routePage: ((context) => ProductDetail()),
          CartScreen.routeName: ((context) => CartScreen()),
          OrderScreen.routeName: ((context) => OrderScreen()),
        },
        home: ProductsOverviewScreen(),
      ),
    );
  }
}
