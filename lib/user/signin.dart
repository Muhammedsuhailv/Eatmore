import 'package:canteenmanagement/admin/bottomnavbar.dart';
import 'package:canteenmanagement/admin/home.dart';
import 'package:canteenmanagement/user/userbottomnavbar.dart';
import 'package:canteenmanagement/user/userhome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserSigninPage extends StatefulWidget {

   UserSigninPage({Key? key}) : super(key: key);

  @override
  State<UserSigninPage> createState() => _UserSigninPageState();
}

class _UserSigninPageState extends State<UserSigninPage> {
  var pass = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
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
                      height: 5,
                    ),
                    Text("Hungry?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    Text("Ready to get started with our canteen ",style: TextStyle(color: HexColor("605E5E"))),
                    Text("management system? Simply click the ",style: TextStyle(color: HexColor("605E5E"))),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 50,
                        width: 315,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
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
                      height: 25,
                    ),
                    SizedBox(
                        height: 50,
                        width: 315,
                        child: TextFormField(

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
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
                          if (_formKey.currentState?.validate() ?? false) {


                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserBottomNavigation(),));

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
                          width: 295,
                          decoration: BoxDecoration(
                              color: HexColor("54E70F"),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )),
                    SizedBox(height: 15,),
                    Align(alignment: Alignment.center,child: Text("OR",style: TextStyle(color: HexColor("A8A7A7")),)),
                    Align(alignment: Alignment.center,child: Image.asset("img/googleicon.png",width: 55,))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
