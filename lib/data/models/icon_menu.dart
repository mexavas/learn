import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

List<IconMenu> iconMenus = [
  IconMenu(title: 'Home', iconData: Iconsax.home),
  IconMenu(title: 'Shop', iconData: Iconsax.square),
  IconMenu(title: 'Location', iconData: Iconsax.location),
  IconMenu(title: 'Message', iconData: Iconsax.message),
  IconMenu(title: 'Profile', iconData: Iconsax.user),
];
