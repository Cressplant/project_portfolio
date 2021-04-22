import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/contact.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';

List<Widget> contactActions = [
  Hero(
    tag: Globals.email,
    child: Material(color: Colors.transparent, child: IconButton(icon: Icon(Icons.email), onPressed: () => launchEmail())),
  ),
  Hero(
    tag: Globals.phone,
    child: Material(color: Colors.transparent, child: IconButton(icon: Icon(Icons.phone), onPressed: () => launchPhone())),
  ),
  Hero(
    tag: Globals.linkedIn,
    child:
        Material(color: Colors.transparent, child: IconButton(icon: Image.asset('images/linkedin_logo.png', height: 26.0), onPressed: () => launchLinkedIn())),
  ),
];
