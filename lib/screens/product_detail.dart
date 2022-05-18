import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';


class ProductDetail extends StatelessWidget {
  static const routePage = '/product-detail';
  // final String title;

  // ProductDetail(this.title);
  // const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final routeId = ModalRoute.of(context)!.settings.arguments as String;
    final productsId = Provider.of<Products>(context, listen: false);
    final loadedProduct = productsId.lists.firstWhere((prod) => prod.id == routeId);
    
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),

      body: Text('hello'),
    );
    
  }
}