import 'package:canteenmanagement/user/payment.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../admin/homepagefoodlist.dart';

class Carts extends StatefulWidget {
  Carts({Key? key, required this.img, required this.name,required this.price}) : super(key: key);
  final dynamic img, name,price;

  @override
  State<Carts> createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  bool isFavorite = false; // Initial favorite state
  int quantity = 0; // Initial quantity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 5),
                  child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 11.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 95,
                                width: 100,
                                decoration: BoxDecoration(color: HexColor("F3EFEF"),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: widget.img),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: SizedBox(
                                  width: 235,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),

                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            widget.name,
                                            style: TextStyle(
                                                color: HexColor("605E5E"),
                                                fontWeight: FontWeight.bold),
                                          ),

                                          IconButton(onPressed: () {

                                          }, icon: Icon(Icons.close_rounded,size: 15,color: Colors.black,))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                '₹${(quantity * 10).toStringAsFixed(2)}', // Dynamic rate calculation
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                          SizedBox(width: 65),
                                          Row(
                                            children: [
                                              IconButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      8))),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              HexColor("F3EFEF"))),
                                                  onPressed: () {
                                                    setState(() {
                                                      quantity++;
                                                    });
                                                  },
                                                  icon: Icon(Icons.add)),
                                              SizedBox(width: 5),
                                              Text(
                                                quantity.toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(width: 5),
                                              IconButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      8))),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              HexColor("F3EFEF"))),
                                                  onPressed: () {
                                                    if (quantity > 0) {
                                                      setState(() {
                                                        quantity--;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(Icons.remove))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                  ),
                ),


              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Align(alignment: Alignment.bottomCenter,
                child: InkWell(onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 315,
                    decoration: BoxDecoration(
                        color: HexColor("54E70F"),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Proceed to Buy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
