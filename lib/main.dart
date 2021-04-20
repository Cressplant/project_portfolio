import 'package:flutter/material.dart';
import 'package:project_portfolio/views/ui/screens/navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Portfolio',
      theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 26),
            headline2: TextStyle(fontSize: 24),
            headline3: TextStyle(fontSize: 18, color: Colors.black),
            headline4: TextStyle(fontSize: 16, color: Colors.black),
            headline5: TextStyle(fontSize: 20, color: Colors.black),
            headline6: TextStyle(fontSize: 20, color: Colors.black),
            subtitle1: TextStyle(fontSize: 14),
            subtitle2: TextStyle(fontSize: 14),
          ),
          iconTheme: IconThemeData(color: Colors.blue.shade900),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(elevation: 0, iconTheme: IconThemeData())),
      home: NavigationScreen(),
    );
  }
}
