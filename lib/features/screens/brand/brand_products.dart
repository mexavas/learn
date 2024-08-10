import 'package:flutter/material.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/common/widgets/products_cart/brand_card.dart';
import '/features/common/widgets/sortable/sortable_products.dart';
import '/features/themes/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwItems),
              SSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
