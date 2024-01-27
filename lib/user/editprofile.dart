import 'package:canteenmanagement/user/userbottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EditProfile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Edit Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                     CircleAvatar(
                      backgroundColor: HexColor("E1FED3"),
                      radius: 50,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: HexColor("54E70F"),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(
                  height: 30,
                ),
                Align(alignment: Alignment.centerLeft,child: Text("Full Name",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Enter your username",
                      focusedBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.centerLeft,child: Text("Email",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Enter your username",
                      focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.centerLeft,child: Text("Phone Number",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Enter your username",
                      focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),


                const SizedBox(
                  height: 12,
                ),

                Align(alignment: Alignment.centerLeft,child: Text("Bio",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Enter your username",
                      focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserBottomNavigation(),
                          ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Please fill in all the required fields.'),
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
                      "SAVE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
