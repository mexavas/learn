import 'package:flutter/material.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/themes/constants/sizes.dart';

import '/features/common/widgets/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SSortableProducts(),
      ),
    );
  }
}
