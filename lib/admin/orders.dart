import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'homepagefoodlist.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 5, right: 5),
          child: SizedBox(
            height: 655,
            child: ListView.builder(
              itemCount: TodayOrder.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 11.0),
                    child: Row(
                      children: [
                        Container(
                          height: 95,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: TodayOrder[index]['image'],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(TodayOrder[index]['title'],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text(TodayOrder[index]['sub1'],
                                  style: TextStyle(color: HexColor("9C9BA6"))),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(TodayOrder[index]['sub2'],
                                          style: TextStyle(
                                              color: HexColor("9C9BA6"))),
                                      SizedBox(height: 5),
                                      Text(TodayOrder[index]['rate'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                  SizedBox(width: 85),
                                  GestureDetector(
                                    onTap: () {
                                      // Toggle the order status between "Pending" and "Accepted"
                                      toggleOrderStatus(index);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 44,
                                      width: 66,
                                      decoration: BoxDecoration(
                                        border: orderStatus[index] == "Pending"
                                            ? Border.all(
                                                color: HexColor("FF3326"))
                                            : null,
                                        borderRadius: BorderRadius.circular(6),
                                        color: orderStatus[index] == "Accepted"
                                            ? HexColor("54E70F")
                                            : null,
                                      ),
                                      child: Text(
                                        orderStatus[index],
                                        style: TextStyle(
                                          color:
                                              orderStatus[index] == "Accepted"
                                                  ? Colors.white
                                                  : HexColor("FF3326"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
