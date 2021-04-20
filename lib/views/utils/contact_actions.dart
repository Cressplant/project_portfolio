import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:url_launcher/url_launcher.dart';


List<Widget> contactActions = [

    IconButton(
                              icon: Icon(Icons.email),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.phone),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('images/linkedin_logo.png', height: 26.0),
                              onPressed: () async {
                                if (await canLaunch(Globals.linkedIn)) {
                                  await launch(Globals.linkedIn);
                                }
                              },
                            ),

];