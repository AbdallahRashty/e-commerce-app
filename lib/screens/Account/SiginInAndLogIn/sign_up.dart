import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/Account/Verify_ForgetAndReset/verify_email.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen ({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Let's create Account",style: TextStyle(fontSize: 30)),
              const SizedBox(height: 16.0),
              const Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon:Icon(Iconsax.user),
                                labelText: "Name"
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon:Icon(Iconsax.user),
                              labelText: "Surname",
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                  ],
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon:Icon(Iconsax.user),
                    labelText: "UserName"
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon:Icon(Iconsax.user),
                  labelText: "E-mail",
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon:Icon(Iconsax.password_check),
                  labelText: "Password",
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(value: isChecked, onChanged: (value){
                    setState(() {isChecked = value!;});
                  }),
                  const Text("I agrre to privacy policy and Terms of use"),
                  const SizedBox(height: 16.0),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style:  ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),onPressed: (){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const VerifyEmail()),);
                },child: const Text('Create account')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
