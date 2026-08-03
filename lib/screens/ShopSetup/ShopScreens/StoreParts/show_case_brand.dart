import 'package:flutter/material.dart';

import 'brand_cards.dart';
import 'container1/circular_container.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      backgroundColor: Colors.transparent,
      showBorder: true,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const BrandCard(showBorder: false,),
          const SizedBox(height: 16,),
          Row(children: images.map((image) => BrandTopProductImage(image, context)).toList(),)
        ],
      ),
    );
  }
  Widget BrandTopProductImage(String image, context){
    return Expanded(
        child: CircularContainer(
          backgroundColor: Colors.white,
          showBorder: false,
          margin: const EdgeInsets.only(right: 5),
          padding: const EdgeInsets.all(5),
          child: Image(image: AssetImage(image),height: 100,width: 50,fit: BoxFit.contain,),
        )
    );
  }
}
