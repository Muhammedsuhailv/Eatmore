import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NotiFication extends StatefulWidget {
  const NotiFication({super.key});

  @override
  State<NotiFication> createState() => _NotiFicationState();
}

class _NotiFicationState extends State<NotiFication> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              title: Text(
                "Notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Notifications",
                  ),
                  Tab(
                    text: "Messages (3)",
                  )
                ],
                indicatorColor: HexColor("54E70F"),
                unselectedLabelColor: HexColor("A5A7B9"),
                labelColor: HexColor("54E70F"),
              )),
          body: TabBarView(children: [])),
    );
  }
}
