import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed
  });
  final String title,value;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: TextStyle(color: Colors.grey[600],fontSize: 20),overflow: TextOverflow.ellipsis,)),
            Expanded(flex: 5, child: Text(value, style: const TextStyle(color: Colors.black,fontSize: 20),overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(icon,size: 18,)),
          ],
        ),
      ),
    );
  }
}
