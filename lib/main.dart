import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_portfolio/views/ui/screens/home_screen.dart';

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
          headline5: TextStyle(fontSize: 20),
          headline6: TextStyle(fontSize: 20),
          subtitle1: TextStyle(fontSize: 14),
          subtitle2: TextStyle(fontSize: 14),

          // headline6: GoogleFonts.averiaSansLibre(fontSize: 20),
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
