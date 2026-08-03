import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/rounded_rectangle.dart';
import 'container1/circular_container.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Dotcontroller());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.UpdatePageInducator(index),
          ),
          items: banners.map((URL) => RoundedRectangle(imageURl: URL)).toList(),
        ),
        const SizedBox(height: 16.0,),
        Center(
          child: Obx(() => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < banners.length; i++)
                    CircularContainer(
                      height: 7,
                      width: 25,
                      margin: const EdgeInsets.only(right: 10.0),
                      radius: 400,
                      showBorder: true,
                      backgroundColor:
                          controller.CarouselCurrentIndex.value == i
                              ? Colors.green
                              : Colors.grey,
                    )
                ],
              )
          ),
        ),
      ],
    );
  }
}

class Dotcontroller extends GetxController {
  static Dotcontroller get instance => Get.find();

  final CarouselCurrentIndex = 0.obs;

  void UpdatePageInducator(index) {
    CarouselCurrentIndex.value = index;
  }
}
