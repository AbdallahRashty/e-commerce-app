import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.height = 56,
    this.width = 56,
    this.padding = 1,
    required this.image,
    this.inNetworkImage = false,
    this.fit = BoxFit.cover,
    this.backGroundColor = Colors.white,
    this.overLayColor
  });

  final double height,width,padding;
  final String image;
  final bool inNetworkImage;
  final BoxFit? fit;
  final Color? backGroundColor,overLayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Image(
        fit: fit,
        image: inNetworkImage? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overLayColor,
      ),
    );
  }
}
