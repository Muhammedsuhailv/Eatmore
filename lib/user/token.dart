import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../admin/homepagefoodlist.dart';

class Tokens extends StatefulWidget {
  const Tokens({Key? key}) : super(key: key);

  @override
  State<Tokens> createState() => _TokensState();
}

class _TokensState extends State<Tokens> {
  List<String> orderStatus =
      List.generate(TodayOrder.length, (index) => "Pending");

  void toggleOrderStatus(int index) {
    setState(() {
      if (orderStatus[index] == "Pending") {
        orderStatus[index] = "Accepted";
      } else {
        orderStatus[index] = "Pending";
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Prebook",
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Card(
              child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor("E1FED3"),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 58.0, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("img/Biriyani2.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Token No   :024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.55),
                                    ),
                                    Text(
                                      "Chicken Biriyani",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Quantity :02",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Pyment :Cash",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 55,
                      right: -295,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    Positioned(
                      top: 55,
                      right: 0,
                      left: -295,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "11:44,01 February 2022",
                            style: TextStyle(color: HexColor("9C9BA6")),
                          )),
                    ),
                  ])),
            )));
  }
}
