import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({
    super.key,
    this.height,
    this.width,
    required this.imageURl,
    this.applayImageRadius = true,
    this.border,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.borderRadius = 20,
    this.onPress,
  });

  final double? height,width;
  final String imageURl;
  final bool applayImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPress;
  final bool isNetworkImage;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          color: Colors.white
        ),
        child: ClipRRect(
          borderRadius: applayImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child:
          Image(fit: fit, image: isNetworkImage? NetworkImage(imageURl) : AssetImage(imageURl) as ImageProvider,),
        ),
      ),
    );
  }
}
