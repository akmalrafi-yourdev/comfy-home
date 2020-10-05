import 'package:flutter/material.dart';
import 'package:smart_home/screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  // List of BottomNavBar

  List<BottomNavigationBarItem> bottomNavigationBarItem() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.ac_unit),
        title: Text("AC Unit"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.tab),
        title: Text("Controller"),
      ),
    ];
  }

//  Color(0xFF726a95),
//  Color(0xFF709fb0)

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFF709fb0),
      unselectedItemColor: Colors.grey[400],
      currentIndex: currentIndex,
      items: bottomNavigationBarItem(),
      onTap: (value) {
        setState(() {
          currentIndex = value;
          pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 600),
            curve: Curves.easeOut,
          );
        });
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: [
          HomeScreen(),
          Center(
            child: Text(
              "Hello! :)",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF726a95),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
