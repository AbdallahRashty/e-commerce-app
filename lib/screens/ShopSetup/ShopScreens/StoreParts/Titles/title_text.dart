import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerifiableIcon extends StatelessWidget {
  const BrandTitleWithVerifiableIcon({
    super.key,
    required this.title,
    this.iconColor = Colors.blue,
    this.textColor = Colors.grey,
    this.textSize = 15,
    this.maxLines = 1,
  });
  final String title;
  final Color? iconColor,textColor;
  final double? textSize;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BrandTitleText(title: title,
          maxLines: maxLines,
          textColor: textColor,
          textSize: textSize,
        ),
        const SizedBox(height: 8,),
        Icon(Iconsax.verify5,color: iconColor, size: 20,)
      ],
    );
  }
}

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.textColor,
    this.textSize = 10.0,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
  });
  final String title;
  final Color? textColor;
  final double? textSize;
  final int maxLines;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
      ),
      maxLines: maxLines,
    );
  }
}