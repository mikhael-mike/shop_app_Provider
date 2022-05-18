import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  // const ProductItem({Key? key}) : super(key: key);

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductDetail.routePage, arguments: id);
          },
          child: Image.network(imageUrl, fit: BoxFit.cover,)),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(title, textAlign: TextAlign.center,),
          leading: IconButton(onPressed: () {}, color: Theme.of(context).primaryColor, icon: Icon(Icons.favorite)),
          trailing: IconButton(onPressed: () {}, color: Theme.of(context).primaryColor, icon: Icon(Icons.shopping_bag),),
        ),
        ),
    );
  }
}
