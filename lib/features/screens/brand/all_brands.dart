import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/common/widgets/layout/grid_layout.dart';
import '/features/common/widgets/products_cart/brand_card.dart';
import '/features/common/widgets/texts_widgets/section_heading.dart';
import '/features/screens/brand/brand_products.dart';
import '/features/themes/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const SSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              SGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => SBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
