import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/product_image_slider.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/rating_and_share.dart';
import '../add_remove_to_cart_buttom.dart';
import '../item_box_parts/product_attributes.dart';
import '../product_mata_data.dart';

class ProductDetailes extends StatelessWidget {
  const ProductDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AddRemoveTOCartButtom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
                padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMataData(),
                  ProductAttributes(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
