import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart' show Orders;
import 'package:shop_app/widgets/order_item.dart';


class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
            shrinkWrap: true,
            itemCount: orderData.orders.length,
            itemBuilder: (context, index) => OrderItem(orderData.orders[index])),
        
      
    );
  }
}