import 'package:flutter/material.dart';
import '/features/themes/constants/sizes.dart';
import '/data/models/product.dart';
import '../componenets/product_item.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.dividerHeight),
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwItems),

              //  SProductCardVertical(),
              ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  height: 0,
                  color: Color.fromARGB(35, 158, 158, 158),
                  indent: 16,
                  endIndent: 16,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(product: productList[index]);
                },
                itemCount: productList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
