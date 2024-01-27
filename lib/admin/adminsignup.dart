import 'package:canteenmanagement/admin/bottomnavbar.dart';
import 'package:canteenmanagement/admin/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var pass = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    height: 190,
                    width: 290,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "img/eating-healthy-food-concept-illustration_114360-2235-removebg-preview.png"))),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  SizedBox(
                      height: 50,
                      width: 315,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Login with email or username",
                            hintStyle: TextStyle(color: HexColor("A8A7A7")),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                )),
                            fillColor: HexColor("EDEDED"),
                            filled: true,
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 50,
                      width: 315,
                      child: TextField(
                        obscureText: !pass,
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(color: HexColor("A8A7A7")),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                )),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: Icon(pass
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            fillColor: HexColor("EDEDED"),
                            filled: true,
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: HexColor("A8A7A7")),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigation(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 295,
                        decoration: BoxDecoration(
                            color: HexColor("54E70F"),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
