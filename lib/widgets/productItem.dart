import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/screens/product_detail.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // // const ProductItem({Key? key}) : super(key: key);

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    print('product rebuild');
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProductDetail.routePage,
                  arguments: product.id);
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (context, value, _) => IconButton(
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                color: Theme.of(context).primaryColor,
                icon: Icon(product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border)),
          ),
          trailing: IconButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.shopping_bag),
          ),
        ),
      ),
    );
  }
}
