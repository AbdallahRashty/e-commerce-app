import 'package:flutter/material.dart';
import 'Titles/title_text.dart';
import 'circular_image.dart';
import 'container1/circular_container.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, required this.showBorder,
  });
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: CircularContainer(
        padding: const EdgeInsets.all(5),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: const Row(
          children: [
            Flexible(
              child:CircularImage(
                image: 'assets/Icons/dressmaker (1).png',
                backGroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BrandTitleWithVerifiableIcon(
                    title: 'Brand Name',
                    textSize: 15,
                    textColor: Colors.black,
                  ),
                  Text(
                    "432 products",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
