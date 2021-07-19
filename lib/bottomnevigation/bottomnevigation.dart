import 'package:flutter/material.dart';

import '../activity.dart';
import '../bankingscreen.dart';
import '../currency.dart';
import '../homepage.dart';
import '../mony_withdraw_request.dart';

class BottomNevigation extends StatefulWidget {
  const BottomNevigation({Key? key}) : super(key: key);

  @override
  _BottomNevigationState createState() => _BottomNevigationState();
}

class _BottomNevigationState extends State<BottomNevigation> {
  int _indexPage = 0;
  final pageOption = [
    HomePage(),
    Money_withdraw_Request(),
    Currency(),
    BankingScreen(),
    Activity(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[_indexPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  Image(
              image: AssetImage("images/bottomlogo.jpg"),
                height: 22,
                width: 22,
              ),

            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timer_rounded,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _indexPage = index;
          });
        },
      ),
    );
  }
}
