import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/Navigation_menu.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/AppBar/custumAppBar.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/grid_layout.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/like_icon.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/product_card_vertical.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: const Text("Wishlist", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
        action: [
          LikeIcon(icon: Iconsax.add,onPress: (){
            final controller = Get.find<NavigationController>();
            controller.SelectedIndex.value = 0; // Set the index to HomeScreen
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: GridLayout(itemCount: 4, itemBuilder: (_,index) => const ProductCardVertical(),),
        ),
      ),
    );
  }
}
