import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/AppBar/custumAppBar.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/App_Pages/profile_screen.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/container1/primery_header_contaner.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/section_heading.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/setting_menu_title.dart';
import 'StoreParts/user_profile_title.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PrimeryHeaderContaner(
            height: 200,
              child: Column(
                children: [
                  const CAppBar(title: Text("Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),),
                  UserProfileTitle(onPressed: () {
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder:
                            (context) => const ProfileScreen()
                        ),
                    );
                  },),
                  const SizedBox(height: 16,),
                ],
              )
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SectionHeading(title: "Account Settings", OnPress: (){}),

                SettingMenuTitle(
                  icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shippment delevry address', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and checkout', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.notification, title: 'Notification', subTitle: 'Set any kind of notification message', ontap: (){},
                ),
                SettingMenuTitle(
                  icon: Iconsax.security_card, title: 'My Address', subTitle: 'Manage data usage and connected accounts', ontap: (){},
                ),
                const SizedBox(height: 16,),
                SectionHeading(title: "My App Settings", OnPress: (){}, showActionButton: false,),
                const SizedBox(height: 16,),
                SettingMenuTitle(
                  icon: Iconsax.document_upload,
                  title: 'Load data',
                  subTitle: 'upload your data to cloud firewall',
                  trailing: Switch(value: true, onChanged: (value) {},),
                ),
                SettingMenuTitle(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recomondation base on location',
                  trailing: Switch(value: true, onChanged: (value) {},),
                ),
                SettingMenuTitle(
                  icon: Iconsax.security_user,
                  title: 'Safe mode',
                  subTitle: 'Search results is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {},),
                ),
                SettingMenuTitle(
                  icon: Iconsax.image,
                  title: 'HD image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value) {},),
                ),

                const SizedBox(height: 16,),
                SizedBox(
                  child: OutlinedButton(
                      onPressed: (){},
                      child: const Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)
                      ),
                  ),
                ),
                const SizedBox(height: 35,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
