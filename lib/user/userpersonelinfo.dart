import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'editprofile.dart';

class UserPersonelInfo extends StatelessWidget {
  const UserPersonelInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ));
              },
              child: Text(
                'Edit',
                style: TextStyle(
                    color: HexColor("54E70F"),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: HexColor("E1FED3"),
                  child: Icon(
                    Icons.person_outline,
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "MUHAMMED V",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                          color: HexColor("E1FED3"),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_outlined,
                              color: HexColor("FB6F3D"),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Starbi",
                                style: TextStyle(color: HexColor("6B6E82")),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                          color: HexColor("E1FED3"),
                          borderRadius: BorderRadius.circular(0)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.email_outlined,
                              color: HexColor("413DFB"),
                            ),
                          ),
                          SizedBox(
                            width:12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Starbi",
                                style: TextStyle(color: HexColor("6B6E82")),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                          color: HexColor("E1FED3"),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.call,
                              color: HexColor("369BFF"),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone Number",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Starbi",
                                style: TextStyle(color: HexColor("6B6E82")),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}
