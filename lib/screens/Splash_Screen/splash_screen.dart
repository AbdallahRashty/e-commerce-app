import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laplace_project/screens/Account/SiginInAndLogIn/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  }

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ));
    });
}
  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Center(
        widthFactor: double.infinity,
        child: Image(image: AssetImage("assets/images/AppImages/intro_logo.jpg"),
        ),
      ),
    );
  }
}
