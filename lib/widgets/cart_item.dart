import 'package:flutter/material.dart';


class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final int quanitity;
  final double price;
  
  

  CartItem(this.id, this.title, this.quanitity, this.price);
  
  // const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 15,
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListTile(
          leading: CircleAvatar(child: Text('\$${price}'),),
          title: Text(title),
          subtitle: Text('Total: \$${(price * quanitity)}'),
          trailing: Text('$quanitity x'),
          
        ),
      ),
    );
  }
}