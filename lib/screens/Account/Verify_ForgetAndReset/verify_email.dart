import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laplace_project/screens/Account/SiginInAndLogIn/login.dart';
import 'package:laplace_project/screens/Account/Verify_ForgetAndReset/Success_screen.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Image(image: AssetImage("assets/images/AppImages/delivery_emal_illumination.png")),
              const SizedBox(height: 16.0,),
              const Text("Verify you your email address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.start,),
              const SizedBox(height: 16.0,),
              const Text("Suport@gmail.com.",style: TextStyle(fontSize: 20),textAlign: TextAlign.start),
              const SizedBox(height: 16.0,),
              const Text("Congratulation! your account awaits: verify your email to start shopping",style: TextStyle(fontSize: 15),textAlign: TextAlign.start),
              const SizedBox(height: 16.0,),
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ), onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => const SuccessScreen()),);
                }, child: const Text("Continue"),
                ),),
              const SizedBox(height: 16.0,),
              SizedBox(width: double.infinity,
                child: TextButton(onPressed: () {}, child: const Text("Resend Email"),),),
            ],
          ),
        ),
      ),
    );
  }
}
