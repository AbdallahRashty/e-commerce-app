import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Cartcounter extends StatelessWidget {
  const Cartcounter({
    super.key,
    required this.OnPress,
    required this.iconColor,
    required this.textColor,
  });

  final VoidCallback OnPress;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: OnPress, icon: const Icon(Iconsax.shopping_bag,color: Colors.black,)),
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text("2",style: TextStyle(color: textColor),),
              ),
            ),
        )
      ],
    );
  }
}
