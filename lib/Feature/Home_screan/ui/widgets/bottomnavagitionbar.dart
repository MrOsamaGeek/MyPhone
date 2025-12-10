import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/card.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/favourite.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/home.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/profile.dart';

class Normalpage extends StatefulWidget {
  const Normalpage({super.key});

  @override
  State<Normalpage> createState() => _NormalpageState();
}

class _NormalpageState extends State<Normalpage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetoption = <Widget>[
      Myhome(),
      Checkcard(),
      Favourite(),
      Profile(),
    ];
    return Scaffold(
      body: _widgetoption.elementAt(_index),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Color(0xff6B4C36),
        unselectedItemColor: Color(0xff303030),
        currentIndex: _index,
        onTap: _change,
      ),
    );
  }

  void _change(int value) {
    setState(() {
      _index = value;
    });
  }
}
