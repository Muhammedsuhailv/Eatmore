import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'homepagefoodlist.dart';

class AddNewItem extends StatelessWidget {
  const AddNewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Add New Item",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 125,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/mainuploadimage2.jpg"))),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.white70,
                        size: 55,
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Upload Image",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("ITEM NAME")),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 45,
                  width: 305,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: HexColor("FDFDFD"),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26))),
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("CHOOSE CATEGORY")),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 45,
                  width: 305,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down)),
                        filled: true,
                        fillColor: HexColor("FDFDFD"),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26))),
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("PRICE")),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 55,
                      width: 95,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixText: "₹",
                            filled: true,
                            fillColor: HexColor("FDFDFD"),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26))),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("DETAILS")),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 155,
                  width: 305,
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: HexColor("FDFDFD"),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26))),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
