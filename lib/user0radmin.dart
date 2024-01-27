import 'package:canteenmanagement/user/usersplashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'admin/adminsplashscreen.dart';

class UserorAdmin extends StatelessWidget {
  const UserorAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "img/Eatmore Logo.png",
            width: 135,
          ),
          centerTitle: true,
          backgroundColor: HexColor("54E70F"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor("54E70F"),
                HexColor("7EEF36"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserSplash(),
                      ));
                },
                child: Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      "User ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  height: 5), // Add some space between the containers
              const Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                  height: 5), // Add some space between the containers
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Splash(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    color: HexColor("232622"),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Admin ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
