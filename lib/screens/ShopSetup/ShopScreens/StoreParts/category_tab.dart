import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/grid_layout.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/product_card_vertical.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/section_heading.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/show_case_brand.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const BrandShowCase(images: [
                "assets/images/ProductsImages/electronics/New folder (5)/110000767395561.jpg",
                "assets/images/ProductsImages/electronics/New folder (5)/110000767647722.jpg",
                "assets/images/ProductsImages/electronics/New folder (5)/110000767686501.jpg"
              ],),
              const BrandShowCase(images: [
                "assets/images/ProductsImages/electronics/New folder (5)/110000767395561.jpg",
                "assets/images/ProductsImages/electronics/New folder (5)/110000767647722.jpg",
                "assets/images/ProductsImages/electronics/New folder (5)/110000767686501.jpg"
              ],),
              const SizedBox(height: 16,),

              SectionHeading(title: "You might like", OnPress: (){},showActionButton: true,),
              const SizedBox(height: 16,),

              GridLayout(itemCount: 4, itemBuilder: (_,index) => const ProductCardVertical()),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ],
    );
  }
}
