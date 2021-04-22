import 'package:flutter/material.dart';
import 'package:project_portfolio/views/ui/screens/about_screen.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        backgroundColor: Theme.of(context).cardColor,
        onTap: (_index) => _pageController.animateToPage(_index, duration: Duration(milliseconds: 300), curve: Curves.easeIn),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          const BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact'),
        ],
      ),
      body: PageView(
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
