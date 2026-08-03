import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/Shop_screen.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/home_screen.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/wishlist_screen.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/account_setting_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: Controller.SelectedIndex.value,
            onDestinationSelected: (index) => Controller.SelectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store',),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist',),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',),
            ],
          )),
      body: Obx(() => Controller.Screens[Controller.SelectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> SelectedIndex = 0.obs;

  final List<Widget> Screens = [
    const HomeScreen(),
    const ShopScreen(),
    const WishlistScreen(),
    const AccountSettingScreen()
  ];
}
