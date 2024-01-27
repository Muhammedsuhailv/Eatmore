import 'package:canteenmanagement/user/signup%20or%20signin.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserSplash extends StatelessWidget {
  const UserSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (context != null && context.mounted) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignupOrSignin()));
      }
    });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor("54E70F"),
              HexColor("7EEF36"), // A slightly lighter shade than "54E70F"
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Image.asset('img/Eatmore Logo.png'),
        ),
      ),
    );
  }
}