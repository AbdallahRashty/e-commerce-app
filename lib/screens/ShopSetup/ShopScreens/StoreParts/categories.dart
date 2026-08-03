import 'package:flutter/material.dart';
import 'vertical_text_image.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
          return VerticalTextImage(image: "assets/Icons/Diamond.png",title: "shoes",onTap: (){},);
        },
      ),
    );
  }
}
