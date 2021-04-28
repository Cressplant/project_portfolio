import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/utils/globals.dart';
import 'package:project_portfolio/business_logic/utils/launch.dart';

List<Widget> contactActions = [
  Hero(
    tag: Globals.phone,
    child: Material(color: Colors.transparent, child: IconButton(icon: Icon(Icons.phone), onPressed: () => openLink(Globals.openPhoneURL))),
  ),
  Hero(
    tag: Globals.email,
    child: Material(color: Colors.transparent, child: IconButton(icon: Icon(Icons.email), onPressed: () => openLink(Globals.openPhoneURL))),
  ),
  Hero(
    tag: Globals.linkedIn,
    child:
        Material(color: Colors.transparent, child: IconButton(icon: Image.asset('assets/images/linkedin_logo.png', height: 26.0), onPressed: () => openLink(Globals.linkedIn))),
  ),
];
