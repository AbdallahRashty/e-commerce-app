import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/cartcounter.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/grid_layout.dart';
import 'StoreParts/AppBar/custumAppBar.dart';
import 'StoreParts/categories.dart';
import 'StoreParts/container1/primery_header_contaner.dart';
import 'StoreParts/item_box_parts/product_card_vertical.dart';
import 'StoreParts/promo_slider.dart';
import 'StoreParts/searchBar.dart';
import 'StoreParts/section_heading.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimeryHeaderContaner(
              child: Column(
                children: [
                  CAppBar(
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good day for ",
                            style: TextStyle(color: Colors.grey)),
                        Text("Mr Smith", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    action: [
                      Cartcounter(OnPress: () {}, iconColor: Colors.white, textColor: Colors.white,),
                    ],
                  ),
                  const SizedBox(height: 32.0,),
                  const searchContainer(text: "Search in store",),

                  const SizedBox(height: 32.0,),
                  SectionHeading(
                    title: "Popular container",
                    buttonTitle: "Popular categories",
                    showActionButton: false,
                    OnPress: () {},
                  ),
                  const SizedBox(height: 10.0,),
                  const Categories(),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: PromoSlider(
                  banners: [
                    "assets/images/ProductsImages/black-friday-composition-red-background-with-copy-space_23-2148665563.jpg",
                    "assets/images/ProductsImages/flat-lay-cyber-monday-assortment_23-2149055955.jpg",
                    "assets/images/ProductsImages/sale-with-special-discount-couch_23-2150040375.jpg",
                    "assets/images/ProductsImages/walk-luxury-best-shoes-that-combine-fashion-function_1257485-12046.jpg"
                  ],
                ),
            ),
            const SizedBox(height: 16,),
            SectionHeading(title: "Popular products", OnPress: (){}),

            const SizedBox(height: 16,),
            GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical(),mainAxisSpacing: 290,),
          ],
        ),
      ),
    );
  }
}

