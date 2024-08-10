import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/common/widgets/texts_widgets/section_heading.dart';
import '/features/screens/order/order.dart';
import '/features/themes/constants/sizes.dart';
import '/features/common/widgets/list_tiles/settings_menu_tile.dart';

class NjyeScreen extends StatelessWidget {
  const NjyeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: const Text('itunda'),
        // add notification icon
        action: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header\

            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SSectionHeading(
                    title: 'Njyewe',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  SSettingsMenuTile(
                    icon: Iconsax.heart,
                    title: 'ibyo nakunze',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()),
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'ibyo naguze',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(()),
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.receipt,
                    title: 'ibyo nagurishije',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SSectionHeading(
                    title: 'bizinesi',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  SSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'My Bank Account',
                    subTitle: 'Add credit/debit card',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discount coupons',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set notifications according to your choice',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  /// App settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SSectionHeading(
                      title: 'itunda ryanjye', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SSettingsMenuTile(
                      icon: Iconsax.cloud_add,
                      title: 'emeza umudugudu',
                      subTitle: 'Upload Data to your Cloud Firebase'),

                  SSettingsMenuTile(
                    icon: Iconsax.sun,
                    title: 'Dark Mode',
                    subTitle: 'hindura (light, dark mode)',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Guhindura umudugudu',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///Logout button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Gusohoka'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
