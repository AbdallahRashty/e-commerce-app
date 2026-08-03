import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/Titles/title_text.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/circular_image.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/container1/circular_container.dart';

class ProductMataData extends StatelessWidget {
  const ProductMataData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          CircularContainer(
            height: 30,
            width: 55,
            radius: 8,
            backgroundColor: Colors.yellowAccent.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            showBorder: false,
            child: const Text(
              "25%",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Text(
            "\$250",
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
                fontSize: 20),
          ),
          const SizedBox(
            width: 16,
          ),
          const Text(
            "\$190",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      const Text("Iphone",style: TextStyle(fontSize: 20),),
      const SizedBox(
        height: 8,
      ),
      const Row(
        children: [
          Text("Status:",style: TextStyle(fontSize: 20),),
          SizedBox(
            width: 16,
          ),
          Text("In Stuck",style: TextStyle(fontSize: 20),),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      const Row(
        children: [
          CircularImage(image: "assets/Icons/cell-phone.png"),
          BrandTitleWithVerifiableIcon(title: "Iphone",textSize: 18,textColor: Colors.black,)
        ],
      )

    ]);
  }
}

