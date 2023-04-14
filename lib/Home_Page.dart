import 'package:flutter/material.dart';
import 'package:psyogram/Profil.dart';
import 'package:psyogram/const/arka_plan.dart';
import 'package:psyogram/const/card.dart';
import 'package:psyogram/const/colors.dart';
import 'package:psyogram/const/myDrawer.dart';
import 'package:psyogram/Tartismalar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    //anasayfanın body'si

    Center(
      child: CardExamplesApp(),
    ),

    Text("Tartişma"),

    Center(
      child: ProfilePage(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar: AppBar(
        title: Text("Psyogram"),
        backgroundColor: arkaplan_1,
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      //alt navbar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'AnaSayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Tartişma',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(114, 114, 61, 79),
        selectedItemColor: Color.fromARGB(255, 5, 70, 120),
        onTap: _onItemTapped,
      ),
    );
  }
}
