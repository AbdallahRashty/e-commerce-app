import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/Navigation_menu.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/Profile_Parts/profile_menu.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/circular_image.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/section_heading.dart';

import '../AppBar/custumAppBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        backArrow: true,
        title: const Text("Profile"),
        leadingOnPress: (){
          final controller = Get.find<NavigationController>();
          controller.SelectedIndex.value = 3; // 3 is for AccountSettingScreen
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    const CircularImage(
                      image: "assets/images/ProfileImages/d0nteob3whb9a1.jpg",
                      height: 80,
                      width: 80,
                      padding: 0,
                    ),
                    TextButton(onPressed: (){}, child: const Text("Change Profile Picture")),
                    const SizedBox(height: 16,),
                    const Divider(),
                    const SizedBox(height: 16,),

                    SectionHeading(title: "Profile information", OnPress: (){},showActionButton: false,),
                    const SizedBox(height: 16,),

                    ProfileMenu(title: "name", value: "bob", onPressed: (){}),
                    ProfileMenu(title: "surname", value: "max", onPressed: (){}),

                    const SizedBox(height: 16,),
                    const Divider(),
                    const SizedBox(height: 16,),

                    SectionHeading(title: "Personal information", OnPress: (){},showActionButton: false,),
                    const SizedBox(height: 16,),
                    ProfileMenu(title: "User Id", value: "54683",icon: Iconsax.copy, onPressed: (){}),
                    ProfileMenu(title: "E-mail", value: "Email@.com", onPressed: (){}),
                    ProfileMenu(title: "phone number", value: "+903874t85863564", onPressed: (){}),
                    ProfileMenu(title: "Gender", value: "Male", onPressed: (){}),
                    ProfileMenu(title: "Birth date", value: "23 Sep 2002", onPressed: (){}),

                    const Divider(),
                    const SizedBox(height: 16,),

                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Close Account",style: TextStyle(color: Colors.red),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
