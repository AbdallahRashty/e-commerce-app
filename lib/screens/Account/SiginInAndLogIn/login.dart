import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laplace_project/screens/Account/SiginInAndLogIn/sign_up.dart';
import 'package:laplace_project/screens/Account/Verify_ForgetAndReset/forget_password.dart';
import 'package:laplace_project/screens/ShopSetup/Navigation_menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 58.0,
            left: 24.0,
            right: 24.0,
            bottom: 24.0,
          ),
          child: Column(
            children:[
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage("assets/images/AppImages/2FTTD.png")
                  ),
                  Text("Welcome back",style: TextStyle(fontSize: 40)),
                  SizedBox(height: 16.0),
                  Text("Discover limitless choices and unmatched Convenience.",style: TextStyle(fontSize: 16))
                ],
              ),
              Form(child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.direct_right),
                          labelText: "E-mail"
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
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: isChecked, onChanged: (value){
                                setState(() {isChecked = value!;});
                              }),
                              const Text('Remember Me')
                            ],
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                            MaterialPageRoute(builder: (context) => const ForgetPassword(),)
                            );
                          }, child: const Text("Forgeting Password"))
                        ],
                      ),
                      const SizedBox(height: 32.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const NavigationMenu()),);
                        },child: const Text('Sign in')),
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignupScreen()),);
                        },child: const Text('Create account')),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
