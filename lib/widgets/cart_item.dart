import 'package:flutter/material.dart';
import 'dart:core';

class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final int quanitity;
  final double price;

  CartItem(
      {required this.id,
      required this.title,
      required this.quanitity,
      required this.price});

      

  // const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
      ),
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