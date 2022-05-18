import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  // const ProductItem({Key? key}) : super(key: key);

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl, fit: BoxFit.cover,),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(title, textAlign: TextAlign.center,),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag),),
      ),
      );
  }
}
