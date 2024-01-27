import 'package:canteenmanagement/admin/addnewiteam.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'homepagefoodlist.dart';

class MyfoodList extends StatelessWidget {
  const MyfoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "My Food List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 910,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: TodayOrder.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 15,
                            top: 15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 225,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  TodayOrder[index]['title'],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  width: 80,
                                                  // Set the desired width
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as needed
                                                  ),
                                                  child: PopupMenuButton(
                                                    color: Colors.black,
                                                    // Set to transparent to see the container's background
                                                    icon: Icon(
                                                      Icons.more_horiz,
                                                      color: Colors.black,
                                                    ),
                                                    itemBuilder:
                                                        (BuildContext context) {
                                                      return [
                                                        PopupMenuItem(
                                                          height: 20,
                                                          value: 'edit',
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons.edit,
                                                                  color: Colors
                                                                      .white),
                                                              SizedBox(
                                                                  width: 8),
                                                              Text('Edit item',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white)),
                                                            ],
                                                          ),
                                                        ),
                                                        PopupMenuItem(
                                                          height: 10,
                                                          child: Divider(
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        PopupMenuItem(
                                                          height: 20,
                                                          value: 'delete',
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .delete_forever_outlined,
                                                                  color: Colors
                                                                      .white),
                                                              SizedBox(
                                                                  width: 8),
                                                              Text(
                                                                  'Delete item',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white)),
                                                            ],
                                                          ),
                                                        ),
                                                      ];
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: HexColor("FB6D3A"),
                                              ),
                                              Text(
                                                "4.9",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("FB6D3A"),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '(10Review)',
                                                style: TextStyle(
                                                  color: HexColor("AFAFAF"),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            TodayOrder[index]['rate'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddNewItem(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 299,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: HexColor("54E70F"),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Add New Item",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
