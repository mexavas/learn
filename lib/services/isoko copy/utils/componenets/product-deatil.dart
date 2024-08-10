import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:itunda/features/themes/constants/colors.dart';
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
              style: const TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.normal)),
          const SizedBox(height: 4.0),
          Text(
            '${product.address} · ${product.publishedAt} ',
            style: const TextStyle(
                color: SColors.darkGrey,
                fontSize: 12.0,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 4.0),
          Text('${numberFormat(product.price)}rwf',
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(height: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          )
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
