import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itunda/services/isoko/pages/home_page.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/helpers/helper_function.dart';
import 'package:get/get.dart';
import '../../services/isoko/home.dart';
import '/services/vuga/vuga_screen.dart';
import '/services/profile/njye/njye_screen.dart';
import '/services/hafi/hafi_screen.dart';
import '/services/urubuga/urubuga_screen.dart';
import 'package:flutter/services.dart';

const Color inActiveIconColor = Color(0xFFB6B6B6);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SHelperFunctions.isDarkMode(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: darkMode ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: darkMode ? SColors.black : Colors.white,
      systemNavigationBarIconBrightness:
          darkMode ? Brightness.light : Brightness.dark,
    ));
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? SColors.black : Colors.white,
          indicatorColor: darkMode
              ? SColors.white.withOpacity(0.1)
              : SColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'itunda',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.square),
              label: 'Urubuga',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.location),
              label: 'Hafi',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.message),
              label: 'Vuga',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Njye',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    MyHomePage(),
    const UrubugaScreen(),
    const HafiScreen(),
    const VugaScreen(),
    const NjyeScreen()
  ];
}
