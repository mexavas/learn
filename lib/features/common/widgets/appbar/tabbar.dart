import 'package:flutter/material.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/device/device_utility.dart';
import '/features/themes/helpers/helper_function.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget {
  const STabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SColors.black : SColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: dark ? SColors.white : SColors.black,
        labelColor: dark ? SColors.white : SColors.black,
        unselectedLabelColor: SColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
