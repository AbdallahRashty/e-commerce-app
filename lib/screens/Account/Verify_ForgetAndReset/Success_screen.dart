import 'package:flutter/material.dart';
import 'package:laplace_project/screens/Account/SiginInAndLogIn/login.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 58.0,
              right: 24.0,
              left: 24.0,
              bottom: 24.0,
            ),
            child: Column(
              children: [
                const Image(image: AssetImage("assets/images/AppImages/delivery_emal_illumination.png")),
                const SizedBox(height: 16.0,),
                const Text("your account successfuly created!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
                const SizedBox(height: 16.0,),
                const Text("welcome to your ultimate shopping destination. Your account is created unleash the joy of seamless online shopping.",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                const SizedBox(height: 16.0,),
                SizedBox(width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ), onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const LoginScreen()),);
                  }, child: const Text("Continue"),
                  ),),
              ],
            ),
        ),
      ),
    );
  }
}
