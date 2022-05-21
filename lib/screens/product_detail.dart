import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';
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
    // final productsId = Provider.of<Products>(context, listen: false);
    // final loadedProduct = productsId.lists.firstWhere((prod) => prod.id == routeId);
    final loadedProduct = Provider.of<Products>(context).findById(routeId);

    return Scaffold(
        appBar: AppBar(title: Text(loadedProduct.title)),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(loadedProduct.price.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
                child: Text(
              loadedProduct.description,
              textAlign: TextAlign.center,
              softWrap: true,
            ))
          ],
        ));
  }
}
