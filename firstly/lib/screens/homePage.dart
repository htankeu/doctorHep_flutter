

import 'package:firstly/screens/chat_login.dart';
import 'package:firstly/screens/doctorHand.dart';
import 'package:firstly/screens/terminBuchung.dart';
import 'package:firstly/tools/pallete.dart';
import 'package:firstly/widgets/health_needs.dart';
import 'package:firstly/widgets/nearby_doctors.dart';
import 'package:firstly/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  const HomePage({
    Key? key,
    }):super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);
    int _currentIndex = 0;
    

    return Scaffold(
      body: PageView(
        onPageChanged: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        controller: _pageController,
        children: const [
          DoctorHand(),
          TerminBuchung(),
          ChatLogin(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.edit_calendar_sharp),label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          _pageController.jumpToPage(index);
        },
        iconSize: 20,
        selectedItemColor: Pallete.gradient2,
      ),
      
    );
  }
}