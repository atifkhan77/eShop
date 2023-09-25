import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/prorduct_grid.dart';

enum FilterOption {
  Favorites,
  All,
}

class ProductView extends StatefulWidget {
  ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    // final productContainer =
    //     Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("eShop"),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOption seletedValue) {
              setState(() {
                if (seletedValue == FilterOption.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOption.Favorites,
                child: Text('Only Favorites'),
              ),
              const PopupMenuItem(
                value: FilterOption.All,
                child: Text('Show All'),
              ),
            ],
          ),
        ],
      ),
      body: ProductGrid(
        _showOnlyFavorites,
      ),
    );
  }
}
