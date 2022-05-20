import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quanitity;
  final double price;

  CartItem(
      {required this.id,
      required this.title,
      required this.quanitity,
      required this.price});
}

class Cart with ChangeNotifier {

  late Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
   return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalPrice {
    double total = 0.0;
     _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quanitity;
    });
    return total;
  }

  void addItems(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // changeQuanitity
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              price: existingCartItem.price,
              quanitity: existingCartItem.quanitity + 1));
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
            id: DateTime.now().toString(),
            title: title,
            quanitity: 1,
            price: price),
      );
    }
    notifyListeners();
  }
}
