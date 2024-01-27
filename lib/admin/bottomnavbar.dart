import 'package:canteenmanagement/admin/home.dart';
import 'package:canteenmanagement/admin/logout.dart';
import 'package:canteenmanagement/admin/myfoodlist.dart';
import 'package:canteenmanagement/admin/orders.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var indexnum = 0;
  List<Widget> pot = [
    Home(),
    MyfoodList(),
    Orders(),
    LogOut(),
    // Sitters(),
    // Trade(),
    // care(),
    // Profile()
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
        return Icons.article_outlined;
      case 2:
        return Icons.menu;
      case 3:
        return Icons.logout;
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
