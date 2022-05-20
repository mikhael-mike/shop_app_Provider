import 'package:flutter/material.dart';


class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final int quanitity;
  final double price;
  
  

   CartItem({required this.id, required this.title, required this.quanitity, required this.price});
  
  // const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      
      child: Card(
        margin: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 4,
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
      ),
    );
  }
}