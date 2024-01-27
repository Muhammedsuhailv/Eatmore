import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserMenue extends StatefulWidget {
  const UserMenue({Key? key}) : super(key: key);

  @override
  State<UserMenue> createState() => _UserMenueState();
}

class _UserMenueState extends State<UserMenue> {
  String selectedItemText = ''; // Store selected item's text
  String selectedCategory = ''; // Track selected category

  List<Map<String, String>> userMenue = [
    {'title': 'Snacks', 'content': 'This is snacks'},
    {'title': "NonVeg", 'content': 'This is nonveg'},
    {'title': "Veg", 'content': 'This is veg'},
    {'title': 'Drinks', 'content': 'This is drinks'},
    // Add more menu items as needed
  ];

  List<Map<String, dynamic>> menuSnack = [
    {
      'img': AssetImage("img/samosa 1 (1).png"),
      'text': "Samosa",
      'rate': "₹20.00"
    },
    {
      'img': AssetImage("img/parippvada.jpg"),
      'text': "Parippuvada",
      "rate": "₹60.00"
    },
    {
      'img': AssetImage("img/bonda.jpg"),
      'text': "Bonda",
      'rate': "₹20.00"
    },
    {
      'img': AssetImage("img/pazham-dori.jpg"),
      'text': "Pazhampori",
      'rate': "₹20.00"
    },
  ];

  List<Map<String, dynamic>> menuNonVeg = [
    {'text': 'Biriyani', 'rate': "₹70", 'img': AssetImage("img/Biriyani2.png")},
    {'text': "chicken roast", 'rate': "₹10", 'img': AssetImage("img/chickenrosted.jpg")},
    {'text': "Fish curry", 'rate': "₹10", 'img': AssetImage("img/Fish-Curry-4.jpg")},
    {'text': 'Prawns Kuzhambu', 'rate': "₹10", 'img': AssetImage("img/Prawns_Kuzhambu.jpg")},
  ];

  List<Map<String, dynamic>> menuVeg = [
    {'text': 'Rasam', 'rate': "₹70", 'img': AssetImage("img/Paruppu-Rasam-Recipe.jpg")},
    {'text': "Avial", 'rate': "₹10", 'img': AssetImage("img/Ayiyal.jpg")},
    {'text': "Thoran", 'rate': "₹10", 'img': AssetImage("img/thoran.jpg")},
    {'text': 'Idiyappam', 'rate': "₹10", 'img': AssetImage("img/idiyappam.jpg")},
  ];

  List<Map<String, dynamic>> menuDrinks = [
    {'text': 'Coca-Cola', 'rate': "₹70", 'img': AssetImage("img/cola.jpg")},
    {'text': "pepsi", 'rate': "₹10", 'img': AssetImage("img/pepsi_12oz.png")},
    {'text': "fruiti", 'rate': "₹10", 'img': AssetImage("img/fruiti.jpg")},
    {'text': 'Idiyappam', 'rate': "₹10", 'img': AssetImage("img/cola.jpg")},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 15.0, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Your Best Food",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Order & Eat. ",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search ",
                  hintStyle: TextStyle(color: HexColor("ADAAAA")),
                  prefixIcon: Icon(
                    Icons.search,
                    color: HexColor("ADAAAA"),
                  ),
                  fillColor: HexColor("E1FED3"),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: ClickableList(
                  userMenue: userMenue,
                  onItemSelected: (content, category) {
                    setState(() {
                      selectedItemText = content;
                      selectedCategory = category;
                    });
                  },
                ),
              ),
              // Display selected item's text at the bottom
              SizedBox(
                height: 350,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        elevation: 3,
                        color: Colors.white, // Set the color to white
                        child: GestureDetector(
                          onTap: () {
                            // Call the callback when an item is clicked
                            setState(() {
                              selectedCategory = userMenue[index]['title'] ?? '';
                            });
                          },
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(8),
                            child: Center(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundImage: selectedCategory == 'Snacks'
                                        ? menuSnack[index]['img'] ?? AssetImage('')
                                        : selectedCategory == 'Drinks'
                                        ? menuDrinks[index]['img'] ?? AssetImage('')
                                        : selectedCategory == 'Veg'
                                        ? menuVeg[index]['img'] ?? AssetImage('')
                                        : selectedCategory == 'NonVeg'
                                        ? menuNonVeg[index]['img'] ?? AssetImage('')
                                        : AssetImage(''),
                                  ),
                                  Text(
                                    selectedCategory == 'Snacks'
                                        ? menuSnack[index]['text'] ?? ''
                                        : selectedCategory == 'Drinks'
                                        ? menuDrinks[index]['text'] ?? ''
                                        : selectedCategory == 'Veg'
                                        ? menuVeg[index]['text'] ?? ''
                                        : selectedCategory == 'NonVeg'
                                        ? menuNonVeg[index]['text'] ?? ''
                                        : '',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    selectedCategory == 'Snacks'
                                        ? menuSnack[index]['rate'] ?? ''
                                        : selectedCategory == 'Drinks'
                                        ? menuDrinks[index]['rate'] ?? ''
                                        : selectedCategory == 'Veg'
                                        ? menuVeg[index]['rate'] ?? ''
                                        : selectedCategory == 'NonVeg'
                                        ? menuNonVeg[index]['rate'] ?? ''
                                        : '',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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

class ClickableList extends StatelessWidget {
  final List<Map<String, String>> userMenue;
  final Function(String, String) onItemSelected;

  ClickableList({required this.userMenue, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: userMenue.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                // Call the callback when an item is clicked
                onItemSelected(
                  userMenue[index]['content'] ?? '',
                  userMenue[index]['title'] ?? '',
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Container(
                  height: 115,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      CircleAvatar(radius: 25,backgroundImage: AssetImage("img/snack.png"),),
                      SizedBox(height: 5),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(userMenue[index]['title'] ?? ''),
                      ),
                    ],

                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
