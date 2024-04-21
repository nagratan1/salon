import 'package:flutter/material.dart';
import 'package:salon/Login.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




@override
void initState(){
  Future.delayed(Duration(seconds: 3)).then((value) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
     (context) => MyLogin(),), (route) => false);
  });

  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Image.asset('assets/images/Online shopping.gif'),
        ),
      ),
    );
  }
}