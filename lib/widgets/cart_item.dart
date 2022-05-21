import 'package:flutter/material.dart';
import 'dart:core';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final int quanitity;
  final double price;

  CartItem(
      {required this.id,
      required this.productId,
      required this.title,
      required this.quanitity,
      required this.price});

      

  // const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(Icons.delete, size: 40,),
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cart.removeProduct(productId);
      },
      child: Card(
        child: ListTile(
          leading: Text('Price: $price'),
          subtitle: Text('Total: ${price * quanitity}'),
          trailing: Text('$quanitity x'),
        ),
      ),
    );
  }
  //   return Card(
      
            
  //             child: ListTile(
                
  //                     child: FittedBox(child: Text('\$${price}'),
  //               ),
  //               title: Text(title),
  //               subtitle: Text('Total: \$${(price * quanitity)}'),
  //               trailing: Text('$quanitity x'),
              
  //             ),
  //   );
  // }
  
}