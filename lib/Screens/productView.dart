import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/prorduct_grid.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("eShop"),
      ),
      body: ProductGrid(),
    );
  }
}
