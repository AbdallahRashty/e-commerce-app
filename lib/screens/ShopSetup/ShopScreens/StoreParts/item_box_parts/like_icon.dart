import 'package:flutter/material.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    super.key,
    this.width,
    this.height,
    this.size = 25,
    required this.icon,
    this.color,
    this.backGroundColor,
    this.onPress
  });

  final double? width,height,size;
  final IconData icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPress;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton( onPressed: onPress, icon: Icon(icon, color: color,size: size,)),
    );
  }
}
