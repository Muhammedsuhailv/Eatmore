import 'package:canteenmanagement/user/paymentsuccses.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../admin/homepagefoodlist.dart';
import 'donationpaymentsucces.dart';

class DonationPayment extends StatefulWidget {
  const DonationPayment({Key? key}) : super(key: key);

  @override
  State<DonationPayment> createState() => _DonationPaymentState();
}

class _DonationPaymentState extends State<DonationPayment> {
  var Payments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text(
            "Payment",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 3,
                  color: HexColor("E1FED3"),
                  child: ListTile(
                    title: Text(
                      "Cash Payment",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    leading: Image.asset('img/payment.png'),
                    trailing: Radio(
                      activeColor: HexColor("54E70F"),
                      value: 'cashPayment',
                      groupValue: Payments,
                      onChanged: (value) {
                        setState(() {
                          Payments = value!;
                        });
                      },
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 3,
                  color: HexColor("E1FED3"),
                  child: ListTile(
                    title: Text(
                      "GooglePay",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    leading: Image.asset('img/googleicons.png'),
                    trailing: Radio(
                      activeColor: HexColor("54E70F"),
                      value: 'Google Pay',
                      groupValue: Payments,
                      onChanged: (value) {
                        setState(() {
                          Payments = value!;
                        });
                      },
                    ),
                  )),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 329,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("E1FED3")),
              child: Text("Add New",
                  style: TextStyle(
                      color: HexColor("54E70F"), fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: ListTile(
                  leading: Text("Donation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                  trailing: Text("₹120.00",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14))),
            ),

            SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: ListTile(
                  leading: Text("Total",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                  trailing: Text("₹120.00",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonationSuccesful(),));
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 315,
                    decoration: BoxDecoration(
                        color: HexColor("54E70F"),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Pay&Confirm",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
