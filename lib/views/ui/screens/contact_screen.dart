import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/launch.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/copy_button.dart';
import 'package:project_portfolio/views/utils/custom_button.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70.0),
          child: Padding(padding: const EdgeInsets.all(10.0), child: Center(child: CustomTitle(leading: Icon(Icons.person), title: 'Contact')))),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                largeVerticalSpacer,
                Row(
                  children: [
                    CustomButton(
                      leading: Icon(Icons.phone),
                      title: Globals.phone,
                      onPressed: () => openLink(Globals.openPhoneURL),
                    ),
                    SizedBox(width: 10.0),
                    CopyButton(copyText: Globals.phone)
                  ],
                ),
                largeVerticalSpacer,
                Row(
                  children: [
                    CustomButton(
                      leading: Icon(Icons.email),
                      title: Globals.email,
                      onPressed: () =>  openLink(Globals.openEmailURL),
                    ),
                    SizedBox(width: 10.0),
                    CopyButton(copyText: Globals.email)
                  ],
                ),
                largeVerticalSpacer,
                Row(
                  children: [
                    CustomButton(
                      leading: Image.asset('images/linkedin_logo.png', height: 26.0),
                      title: 'LinkedIn',
                      onPressed: () => openLink(Globals.linkedIn),
                    ),
                    SizedBox(width: 10.0),
                    CopyButton(copyText: Globals.linkedIn)
                  ],
                ),
                largeVerticalSpacer,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
