import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/utils/decoration.dart';
import 'package:project_portfolio/views/ui/screens/cv_screen.dart';
import 'package:project_portfolio/views/ui/screens/contact_screen.dart';
import 'package:project_portfolio/views/ui/screens/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  static const String id = '/';

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.blue.shade900.withOpacity(0.5),
                offset: Offset(0.0, -1.5),
                blurRadius: 4.0)
          ]
        ),
        child: BottomNavigationBar(
          currentIndex: _currentPage,
          // elevation: 10, // Currently can't change offset to show shadow above? https://github.com/flutter/flutter/issues/27585
          backgroundColor: Theme.of(context).primaryColorDark,
          selectedItemColor: Colors.lightBlueAccent.shade100,
          unselectedItemColor: Colors.white,
          onTap: (_index) => _pageController.jumpToPage(_index),
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.description), label: 'CV'),
            const BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact'),
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (_int) {
          setState(() {
            _currentPage = _int;
          });
        },
        children: [HomeScreen(), AboutScreen(), ContactScreen()],
      ),
    ));
  }
}
