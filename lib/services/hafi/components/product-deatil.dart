import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '/data/models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4.0),
          Text('${product.address} · ${product.publishedAt} '),
          const SizedBox(height: 4.0),
          Text('${numberFormat(product.price)}rwf',
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          const Spacer(),
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
