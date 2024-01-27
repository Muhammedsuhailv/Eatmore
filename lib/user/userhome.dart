import 'package:canteenmanagement/user/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../admin/homepagefoodlist.dart';
import 'menudetails.dart';
import 'ourmenuelist.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfile(),
                    ));
              },
              child: IconButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfile(),
                    ));
              }, icon: const Icon(CupertinoIcons.person)),
            ),
            const SizedBox(width: 25),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 15),
            Card(elevation: 5,
              child: Container(
                height: 155,
                width: 310,
                decoration: BoxDecoration(gradient: LinearGradient(colors: [HexColor("E1FED3"),Colors.white],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Column(
                  children: [

                    const SizedBox(height: 10),
                    Text(
                      "What would you",
                      style: TextStyle(
                        color: HexColor("32343E"),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "like to order?",
                      style: TextStyle(
                        color: HexColor("32343E"),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  SizedBox(height: 55,child: Card(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search,color: HexColor("ADAAAA"),),hintText: "Search our products...",hintStyle: TextStyle(color: HexColor("A8A7A7")),filled: true,fillColor: Colors.white,enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none), focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none)),))),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 310,
              child: Align(alignment: Alignment.centerLeft,
                child: Text(" Our Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
              ),
            ),
            const SizedBox(height: 15),
SizedBox(height: 90,width: 335,
  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: Menue.length,itemBuilder: (context, index) {
    return  InkWell(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MenuDetails(name:Menue[index]['name'],img:Menue[index]['img'],price:Menue[index]['rate']),));
    },
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(radius: 28,backgroundColor: Colors.white,backgroundImage: Menue[index]['img'],),
              Text(Menue[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        const SizedBox(width: 10,)
      
        ],
      ),
    );
  },),
),


            const SizedBox(                width: 310,

              child: Align(alignment: Alignment.centerLeft,
                child: Text(
                  "Popular",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),

            SizedBox(
              height: 165,
              child: ListView.builder(
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: Popular.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: SizedBox(
                      height: 135,
                      width: 185,
                      child: Column(
                        children: [
                          Container(
                            height:
                            110, // Set a specific height for the image container
                            width: 185,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Popular[index]['image'],
                                ),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Popular[index]['title'],
                                    style:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  // RatingBar.builder(
                                  // initialRating: 4.5,
                                  // minRating: 1,
                                  // direction: Axis.horizontal,
                                  // allowHalfRating: true,
                                  // itemCount: 5,
                                  // itemSize: 15,
                                  // itemBuilder: (context, _) => Icon(
                                  // Icons.star,
                                  // color: HexColor("FFE120"),
                                  // ),
                                  // onRatingUpdate: (rating) {
                                  // // Handle rating updates here
                                  // print(rating);
                                  // },
                                  // ),

                                  Popular[index]['ratingbar']
                                ],
                              ),
                              Text(
                                Popular[index]['rate'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );

  }
}
