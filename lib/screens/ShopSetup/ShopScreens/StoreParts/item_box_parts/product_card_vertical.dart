import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/product_price.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/product_title_text.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/shadow_Style.dart';
import '../App_Pages/product_detailes.dart';
import '../Titles/title_text.dart';
import '../container1/circular_container.dart';
import '../rounded_rectangle.dart';
import 'like_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ProductDetailes())
      ),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.VerticulProductShadow],
            borderRadius: BorderRadius.circular(16.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircularContainer(
              height: 180,
              width: 400,
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.grey[400],
              showBorder: false,
              child: Stack(
                children: [
                  const RoundedRectangle(
                    imageURl: 'assets/images/ProductsImages/shose/New folder/110000655340628.jpg',
                    applayImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      height: 30,
                      width: 55,
                      radius: 8,
                      backgroundColor: Colors.yellowAccent.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      showBorder: false,
                      child: const Text(
                        "25%", style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: LikeIcon(icon: Iconsax.heart5,color: Colors.red,),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ProductTitleText(text: 'Sport shose',
                    maxline: 2,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 3,),
                  BrandTitleWithVerifiableIcon(title: 'Brand name',),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductPrice(price: '35.5',),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: const SizedBox(
                    height: 38.4,
                    width: 38.4,
                    child: Center(child: Icon(Iconsax.add,color: Colors.white,)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

