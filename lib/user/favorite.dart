import 'package:canteenmanagement/user/paymentsuccses.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../admin/homepagefoodlist.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var Payments;
  bool isFavorite = false; // Initial favorite state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text(
            "Favorite",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [


            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search ",
                  hintStyle: TextStyle(color: HexColor("ADAAAA")),
                  prefixIcon: Icon(Icons.search,color: HexColor("ADAAAA"),),
                  fillColor: HexColor("E1FED3"),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide.none ,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide.none ,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10), // Adjust the left padding here
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title:Text("Samosa",style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Container(
                height: 100,
                width: 95,
                decoration: BoxDecoration(color: HexColor("F3EFEF"),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("img/samosa 1 (1).png")),
                ),
              ),
                trailing: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red, // Customize the color as needed
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite; // Toggle the favorite state
                    });
                  },
                ),
                subtitle: Text("₹10.00",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),

          ]),
        ));
  }
}
