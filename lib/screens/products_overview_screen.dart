import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import '../widgets/products_grid.dart';


enum filterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {

  var _showOnlyFavorite= false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (filterOptions selectValue) {
                setState(() {
                  //  print(selectValue);
                if (selectValue == filterOptions.Favorites) {
                  _showOnlyFavorite = true;
                } else {
                    _showOnlyFavorite = false;
                }
                });
                
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Only Favorites'),
                      value: filterOptions.Favorites,
                    ),
                    PopupMenuItem(
                      child: Text('Show All'),
                      value: filterOptions.All,
                    ),
                  ])
        ],
      ),
      body: productsgrid(_showOnlyFavorite),
    );
  }
}
