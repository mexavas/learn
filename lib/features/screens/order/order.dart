import 'package:flutter/material.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/screens/order/widgets/orderlistitems.dart';
import '/features/themes/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SOrderListItems(),
      ),
    );
  }
}
