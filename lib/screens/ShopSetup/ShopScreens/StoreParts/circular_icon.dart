import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key,
    required this.icon,
    this.size = 30,
    this.height,
    this.weight,
    this.color,
    this.backGroundColor,
    this.onPressed
  });
  final IconData icon;
  final double? size, height, weight;
  final Color? color, backGroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: weight,
      height: height,
      decoration: BoxDecoration(
        color: backGroundColor ?? Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon,size: size,color: color,),)
    );
  }
}
