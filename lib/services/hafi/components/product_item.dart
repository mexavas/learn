import 'product-deatil.dart';
import 'package:flutter/material.dart';

import '/data/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(children: [
        const SizedBox(width: 16.0),
        ProductDetail(product: product),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            product.urlToImage,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
      ]),
    );
  }
}
