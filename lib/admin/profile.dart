import 'package:canteenmanagement/admin/donationhistory.dart';
import 'package:canteenmanagement/admin/personelnfo.dart';
import 'package:canteenmanagement/admin/reviews.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchValue = false;

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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonelInfo(),
                      ));
                },
                child: Container(
                  height: 65,
                  width: 295,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("E1FED3")),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person_outline,
                          color: HexColor("FB6F3D"),
                        )),
                    title: Text("Personal Info"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: 295,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("E1FED3")),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.settings_outlined,
                        color: HexColor("413DFB"),
                      )),
                  title: Text("Maintanance"),
                  trailing: Transform.scale(
                    scale: 0.7, // Adjust the scale factor as needed
                    child: Switch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: 295,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("E1FED3")),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.local_atm,
                        color: HexColor('FF7622'),
                      )),
                  title: Text("Withdrawal History"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: 295,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("E1FED3")),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.event_note_outlined,
                        color: HexColor('18CFE8'),
                      )),
                  title: Text("Manage Orders"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Donation(),
                      ));
                },
                child: Container(
                  height: 65,
                  width: 295,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("E1FED3")),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.history,
                          color: HexColor('FB6F3D'),
                        )),
                    title: Text("Donation History"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Reviews(),
                      ));
                },
                child: Container(
                  height: 65,
                  width: 295,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("E1FED3")),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.feedback_outlined,
                          color: HexColor('18CFE8'),
                        )),
                    title: Text("Rating & Feedback"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          title: Text(
                            "Log Out?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            "Are you sure you want to log out?",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: HexColor("6B6E82")),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white10),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)))),
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Perform log out action
                                // For example, you can call a function here to log out the user
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          HexColor("FF3326")),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)))),
                              child: Text(
                                "Log Out",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ]);
                    },
                  );
                },
                child: Container(
                  height: 65,
                  width: 295,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("E1FED3")),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.logout,
                          color: HexColor('FB4A59'),
                        )),
                    title: Text("Log Out"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
