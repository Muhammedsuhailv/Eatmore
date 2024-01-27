
import 'package:canteenmanagement/user/preebooking.dart';
import 'package:canteenmanagement/user/token.dart';
import 'package:canteenmanagement/user/userhome.dart';
import 'package:canteenmanagement/user/usermenue.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserBottomNavigation extends StatefulWidget {
  const UserBottomNavigation({Key? key}) : super(key: key);

  @override
  State<UserBottomNavigation> createState() => _UserBottomNavigationState();
}

class _UserBottomNavigationState extends State<UserBottomNavigation> {
  var indexnum = 0;
  List<Widget> pot = [
    const UserHome(),
     const Tokens(),
     PreeBooking(),
    const UserMenue(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 1.0,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            4,
            (int index) {
              return BottomNavItem(
                index: index,
                selectedIndex: indexnum,
                icon: Icon(
                  _getIcon(index),
                  color: _getIconColor(index, indexnum),
                ),
                onTap: () {
                  setState(() {
                    indexnum = index;
                  });
                },
              );
            },
          ),
        ),
      ),
      body: pot.elementAt(indexnum),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home_filled;
      case 1:
        return Icons.token;
      case 2:
        return Icons.shop;
      case 3:
        return Icons.padding;
      default:
        return Icons.home_filled;
    }
  }

  Color _getIconColor(int currentIndex, int selectedIndex) {
    return currentIndex == selectedIndex ? Colors.white : Colors.black;
  }
}

class BottomNavItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final Widget icon;
  final VoidCallback onTap;

  const BottomNavItem({
    required this.index,
    required this.selectedIndex,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color:
              index == selectedIndex ? HexColor("54E70F") : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: icon,
      ),
    );
  }
}
