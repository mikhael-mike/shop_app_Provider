import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart' show Cart;
import 'package:shop_app/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  // const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartDetails = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Total: ',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$${cartDetails.totalPrice}',
                      style: TextStyle(
                        color: Theme.of(context)
                            .primaryTextTheme
                            .titleMedium
                            ?.color,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton(
                    onPressed: (() {}),
                    child: Text('Order Now'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => CartItem(
                          id: cartDetails.items[index].id,
                          title: cartDetails.items[index].title,
                          quanitity: cartDetails.items[index].quanitity,
                          price: cartDetails.items[index].price),
                      itemCount: cartDetails.itemCount,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
