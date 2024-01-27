import 'package:canteenmanagement/user/userbottomnavbar.dart';
import 'package:canteenmanagement/user/userhome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Donation Payment.dart';

class PaymentSuccesful extends StatefulWidget {
  const PaymentSuccesful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccesful> createState() => _PaymentSuccesfulState();
}

class _PaymentSuccesfulState extends State<PaymentSuccesful> {
  var groupvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 210,
            ),
            Image.asset(
              'img/allisokey.png',
              width: 85,
            ),
            Text(
              "Thank You!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Text("We are planning to give donation",
                style: TextStyle(color: HexColor("525C67"))),
            Text("for charity.if you intrested join with us!",
                style: TextStyle(color: HexColor("525C67"))),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select an Amount ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(HexColor("E1FED3"))),
                    onPressed: () {},
                    child: Text(
                      "₹50",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(HexColor("E1FED3"))),
                    onPressed: () {},
                    child: Text(
                      "₹100",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(HexColor("E1FED3"))),
                    onPressed: () {},
                    child: Text(
                      "₹200",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(HexColor("E1FED3"))),
                    onPressed: () {},
                    child: Text(
                      "Other",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'donate',
                    groupValue: groupvalue,
                    onChanged: (value) {
                      setState(() {
                        groupvalue = value!;
                      });
                    },
                  ),
                  Text(
                    "Make my donation recurring",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DonationPayment(),));
            },
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 89,
                decoration: BoxDecoration(
                    color: HexColor("54E70F"),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Donate",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 29,),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserBottomNavigation(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                      color: HexColor("54E70F"),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text("Go Home",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
