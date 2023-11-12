import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uts1/akun.dart';
import 'package:uts1/home.dart';
import 'package:uts1/order.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List <Widget> item = [
    HomeKu(),
    OrderKu(),
    AkunKu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: item [selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 55 ,
        backgroundColor: Colors.white,
        color: Color.fromARGB(255, 80, 88, 157),
        animationDuration: Duration(milliseconds: 350),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: <Widget> [
        Icon(
          Icons.home_outlined,
          size: 28,
          color: Colors.black,
          ),
        Icon(
          Icons.card_travel,
          size: 28,
          color: Colors.black,
          ),
        Icon(
          Icons.person_outline_rounded,
          size: 28,
          color: Colors.black,
          ),
        ],
      ),
    );
  }
}