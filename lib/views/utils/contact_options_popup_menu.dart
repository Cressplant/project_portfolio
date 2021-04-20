import 'package:flutter/material.dart';


class ContactOptionsPopupMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        padding: EdgeInsets.all(4),
                        onSelected: (choice) async {
                          if (choice == 'Staff Settings') {
                      
                          } else if (choice == 'Remove Contact') {
               
                          }
                        },
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (BuildContext context) {
                          return [
                            
                          ].map((choice) {
                            return PopupMenuItem(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      );
  }


}