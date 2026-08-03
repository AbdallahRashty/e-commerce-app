import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/AppBar/custumAppBar.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/curvededges/curved_edgeed_w.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/like_icon.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/rounded_rectangle.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedEdgedW(
      child: Container(
        color: Colors.grey,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/ProductsImages/electronics/New folder/110000155170579.jpg"),
                  ),
                ),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 30,
                left: 24,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_,__) => const SizedBox(width: 16,),
                    itemCount: 6,
                    separatorBuilder: (_,index) => RoundedRectangle(
                      imageURl: 'assets/images/ProductsImages/electronics/New folder/110000155170579.jpg',
                      width: 80,
                      border: Border.all(color: Colors.blue),
                      padding: const EdgeInsets.all(5),
                    ),
                  ),
                )
            ),
            CAppBar(
              backArrow: true,
              action: [
                LikeIcon(icon: Iconsax.heart5,color: Colors.red,backGroundColor: Colors.grey[700],)
              ],
            )
          ],
        ),

      ),
    );
  }
}
//"assets/images/ProductsImages/electronics/New folder/110000155170579.jpg"