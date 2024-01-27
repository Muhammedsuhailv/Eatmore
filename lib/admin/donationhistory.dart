import 'package:canteenmanagement/admin/donationhistorylist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hexcolor/hexcolor.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    // Set the locale to en_IN for Indian time
    var indianDateFormat = DateFormat('dd MMMM yyyy', 'en_IN');
    var indianTimeFormat = DateFormat('hh:mm a', 'en_IN');

    // Format today's date as "dd MMMM yyyy"
    String formattedDate = indianDateFormat.format(DateTime.now());
    // Format the current time as "hh:mm a"
    String formattedTime = indianTimeFormat.format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Donation History",
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
              SizedBox(height: 8),
              Container(
                height: 25,
                width: double.infinity,
                color: HexColor("E8EAED"),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    formattedDate, // Display the formatted date here
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 655,
                child: ListView.builder(
                  itemCount: History.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage("img/download.jpeg")),
                      title: Text(
                        History[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$formattedTime, $formattedDate', // Display time, date, month, and year in subtitle
                        style: TextStyle(color: Colors.black45),
                      ),
                      trailing: Text(History[index]['rate'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
