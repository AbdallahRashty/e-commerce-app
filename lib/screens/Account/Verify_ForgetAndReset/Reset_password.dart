import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laplace_project/screens/Account/SiginInAndLogIn//login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back, icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/AppImages/delivery_emal_illumination.png")),
              const SizedBox(height: 16.0,),
              const Text("Change your password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
              const SizedBox(height: 16.0,),
              const Text("Your account security is our priority! We have sent you a secure link to safely change your password.",style: TextStyle(fontSize: 20),textAlign: TextAlign.start),
              const SizedBox(height: 16.0,),
              SizedBox(width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ), onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => const LoginScreen()),);
              }, child: const Text("Done"),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
