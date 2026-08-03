import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class searchContainer extends StatelessWidget {
  const searchContainer({
    super.key,
    required this.text,
    this.onTap,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
  });
  final String text;
  final VoidCallback? onTap;
  final IconData icon;
  final bool showBorder, showBackground;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: showBackground ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(20.0),
              border: showBorder ? Border.all(color: Colors.grey) : null,
            ),
            child: Row(
              children: [
                Icon(icon,color: Colors.grey,),
                const SizedBox(width: 32.0),
                Text(text,style: const TextStyle(fontSize: 17),),
              ],
            ),
          ),
      ),
    );
  }
}
