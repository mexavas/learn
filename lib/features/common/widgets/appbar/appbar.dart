import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/constants/sizes.dart';
import '/features/themes/device/device_utility.dart';
import '/features/themes/helpers/helper_function.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar({
    super.key,
    this.title,
    this.action,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;

  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.dividerHeight),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left,
                    color: dark ? SColors.white : SColors.black),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: const Icon(Iconsax.arrow_left))
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
