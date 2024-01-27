import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({super.key});

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          SizedBox(
            height: 79,
          ),
          Image.asset(
            "img/Maintenance screen.png",
            width: 265,
          ),
          Text("We’re under maintenance",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),),
          SizedBox(height: 15,),
          Text("Please check back soon just putting little touch",style: TextStyle(color: HexColor("6B6E82")),),
          Text("up on some pretty updates.",style: TextStyle(color: HexColor("6B6E82")),),
          SizedBox(height: 15,),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Maintenance(),));
          },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 105,
              decoration: BoxDecoration(
                color: HexColor("54E70F"),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Close",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
