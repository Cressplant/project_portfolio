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
          headline1: GoogleFonts.ubuntu(fontSize: 26),
          headline2: GoogleFonts.ibmPlexSans(fontSize: 24),
          headline3: GoogleFonts.ibmPlexSans(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          headline4: GoogleFonts.ibmPlexSans(fontSize: 20),
          headline5: GoogleFonts.ubuntu(fontSize: 20),
          headline6: GoogleFonts.averiaSansLibre(fontSize: 20),
        ),
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
