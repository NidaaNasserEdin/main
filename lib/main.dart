import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/ContactsPage.dart';
import 'package:p1/LoginPage.dart';
import 'package:p1/SearchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    ContactsPage(),
    SearchPage(),
    LoginPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text("Contacts")),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.login_outlined), title: Text("Login")),
        ],
      ),
    );
  }
}
