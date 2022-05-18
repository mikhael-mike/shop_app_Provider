import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';


class ProductDetail extends StatelessWidget {
  static const routePage = '/product-detail';
  // final String title;

  // ProductDetail(this.title);
  // const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final routeId = ModalRoute.of(context)!.settings.arguments;
    final foundId = 
    
    return Scaffold(
      appBar: AppBar(title: Text('title')),

      body: null,
    );
    
  }
}