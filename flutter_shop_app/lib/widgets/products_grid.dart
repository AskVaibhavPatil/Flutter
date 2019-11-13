import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import './product_item.dart';
import '../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ProductsProvider productsProvider = Provider.of<ProductsProvider>(context);
    final List<Product> products = productsProvider.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, index) {
        Product product = products[index];
        return ProductItem(
          product.id,
          product.title,
          product.imageUrl
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }
}