import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/productItem.dart';

import '../providers/product.dart';

class productsgrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.lists;
    return GridView.builder(
      padding: EdgeInsets.all(15),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2
              ),
        itemCount: products.length,
        itemBuilder: (context, i) => ChangeNotifierProvider(
          create: (context) => products[i],
          child: ProductItem(
              // products[i].id, products[i].title, products[i].imageUrl),
        )
            ),
    );
  }
}