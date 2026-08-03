import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/Account/Verify_ForgetAndReset/Reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Forgetting password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            const SizedBox(height: 16),
            const Text("Don't worry sometimes people can forget too,""enter your Email and we will send you passworld reset link",
              style: TextStyle(fontSize: 14, color: Colors.grey),textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16),
            const TextField(decoration:
            InputDecoration(labelText:'Email',prefixIcon: Icon(Iconsax.direct_right))
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ResetPassword()),);
              },child: const Text('Submit')),
            ),
          ],
        ),
      ),
    );
  }
}
