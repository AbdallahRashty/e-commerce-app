import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/circular_image.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      const CircularImage(
        image: "assets/images/ProfileImages/d0nteob3whb9a1.jpg",
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: const Text("User Name", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      subtitle: const Text("User.email@gmail.com",style: TextStyle(fontSize: 19,color: Colors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: Colors.white,),),
    );
  }
}
