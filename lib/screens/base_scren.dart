import 'package:flutter/material.dart';
import 'package:easy_banking/constants/color_constants.dart';
import 'package:easy_banking/screens/home_Screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_banking/screens/transaction_screen.dart';

import 'card_screen.dart';

class BaseScreen extends StatefulWidget {
   const  BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    CardScreen(),
    TransactionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home),       label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.creditCard), label: "Cards"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cog),        label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartBar),   label: "Transaction")
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
