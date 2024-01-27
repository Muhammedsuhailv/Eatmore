import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Post",
                style: TextStyle(color: HexColor("54E70F"), fontSize: 16),
              ))
        ],
        title: Row(
          children: [
            Container(
              height: 55,
              width: 50,
              decoration: BoxDecoration(
                color: HexColor("F3EFEF"),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("img/samosa 1 (1).png")),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Samosa",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Rate this item",
                    style: TextStyle(color: HexColor("605E5E"), fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: HexColor("E1FED3"),
                    child: const Icon(
                      Icons.person_outline,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "MUHAMMED V",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "Reviews are public.",
                        style: TextStyle(color: HexColor("A0A5BA")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RatingBar.builder(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: HexColor("FFE120"),
              ),
              onRatingUpdate: (rating) {
                // Handle rating updates here
                print(rating);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 13),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Describe your experience (optional)",
                    filled: true,
                    fillColor: HexColor("EDEDED"),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
