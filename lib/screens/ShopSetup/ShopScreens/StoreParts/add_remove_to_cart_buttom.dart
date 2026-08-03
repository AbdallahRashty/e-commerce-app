import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'circular_icon.dart';

class AddRemoveTOCartButtom extends StatelessWidget {
  const AddRemoveTOCartButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(icon: Iconsax.add,weight: 40, height: 40, backGroundColor: Colors.grey[700],color: Colors.white,),
              const SizedBox(width: 16,),
              const Text("2",style: TextStyle(fontSize: 20),),
              const SizedBox(width: 16,),
              const CircularIcon(icon: Iconsax.minus,weight: 40, height: 40, backGroundColor: Colors.black,color: Colors.white,),
            ],
          ),
          ElevatedButton(onPressed: (){},
            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
            child: const Text("Checkout",style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
