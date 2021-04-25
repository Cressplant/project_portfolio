import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactOptionsPopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
      padding: EdgeInsets.all(4),
      onSelected: (choice) async {
        switch (choice) {
          case 'Phone':
            launch(Globals.openPhoneURL);
            break;
          case 'Email':
            launch(Globals.openEmailURL);
            break;
          case 'LinkedIn':
            launch(Globals.linkedIn);
            break;
        }
      },
      icon: Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return ['Phone', 'Email', 'LinkedIn'].map((choice) {
          return PopupMenuItem(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
