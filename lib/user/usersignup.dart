import 'package:canteenmanagement/user/userbottomnavbar.dart';
import 'package:canteenmanagement/user/userhome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserSignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   UserSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Handle back button press
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Create an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
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
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Enter your username",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Type your e-mail",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Type your password",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Repeat your password",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please repeat your password';
                      }
                      return null;
                    },
                  ),
                ),


                SizedBox(height: 20,),
                InkWell( onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserBottomNavigation(),));
                  } else {

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please fill in all the required fields.'),
                      ),
                    );
                  }
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 325,
                    decoration: BoxDecoration(
                      color: HexColor("54E70F"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Align(alignment: Alignment.center,child: Text("OR",style: TextStyle(color: HexColor("A8A7A7")),)),
                Align(alignment: Alignment.center,child: Image.asset("img/googleicon.png",width: 55,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
