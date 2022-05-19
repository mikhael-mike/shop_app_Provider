import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quanitity;
  final double price;

  CartItem({required this.id, required this.title, required this.quanitity, required this.price});
}

class Cart with ChangeNotifier {
  late Map<String, CartItem> _items;

   Map<String, CartItem> get items {
    return {..._items};
  }

  void addItems(String id, String title, int quanitity, double price) {
    
    notifyListeners();
  }
}