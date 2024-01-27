import 'package:canteenmanagement/user/signin.dart';
import 'package:canteenmanagement/user/usersignup.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 230,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "img/WhatsApp Image 2023-11-03 at 11.40 1.png"))),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Create an account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ready to get started with our canteen",
                style: TextStyle(color: HexColor("605E5E")),
              ),
              Text(
                "management system? Simply click the",
                style: TextStyle(color: HexColor("605E5E")),
              ),
              Text(
                "Get Started button.",
                style: TextStyle(color: HexColor("605E5E")),
              ),
             SizedBox(height: 125,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the Row horizontally
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserSignUp(),));
                  },
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: HexColor("54E70F"),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  //

                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserSigninPage(),));
                  },child:
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: HexColor("232622"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
