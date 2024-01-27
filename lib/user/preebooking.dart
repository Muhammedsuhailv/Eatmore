import 'package:canteenmanagement/user/userbottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Maintenance screen.dart';

class PreeBooking extends StatefulWidget {

  PreeBooking({Key? key}) : super(key: key);

  @override
  State<PreeBooking> createState() => _PreeBookingState();
}

class _PreeBookingState extends State<PreeBooking> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Prebook", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [




                Align(alignment: Alignment.centerLeft,child: Text("Item",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Select Item",
                      focusedBorder:
                       OutlineInputBorder(borderSide: BorderSide(color: HexColor("54E70F"))),
                      enabledBorder:
                       OutlineInputBorder(borderSide:  BorderSide(color: HexColor("54E70F"))),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.centerLeft,child: Text("Date",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.calendar_month),
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "yyyy-mm-dd",
                      focusedBorder:
                       OutlineInputBorder(borderSide:  BorderSide(color: HexColor("54E70F"))),
                      enabledBorder:
                       OutlineInputBorder(borderSide:  BorderSide(color: HexColor("54E70F"))),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.centerLeft,child: Text("Quantity",style: TextStyle(fontSize: 15,color: HexColor("32343E")),)),
                SizedBox(
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      suffix:    Row(
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
                      filled: true,
                      fillColor: HexColor('EDEDED'),
                      hintText: "Select Quantity",
                      focusedBorder:
                       OutlineInputBorder(borderSide: BorderSide(color: HexColor("54E70F"))),
                      enabledBorder:
                       OutlineInputBorder(borderSide:  BorderSide(color: HexColor("54E70F"))),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),





                const SizedBox(
                  height: 165,
                ),

                InkWell(
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserBottomNavigation(),
                          ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                          Text('Please fill in all the required fields.'),
                        ),
                      );
                    }
                  },
                  child: Align(alignment: Alignment.bottomCenter,
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Maintenance(),));
                    },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 325,
                        decoration: BoxDecoration(
                          color: HexColor("54E70F"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "SAVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
