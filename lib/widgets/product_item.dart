import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/productDetail.dart';
import 'package:flutter_application_1/providers/product.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  // final String id;
  // final String title;
  // final String imageUrl;
  // ProductItems(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          leading: Consumer<ProductProvider>(
            builder: (context, value, _) => IconButton(
              icon: Icon(
                product.isFav ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () {
                product.toggleFav();
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetail.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
