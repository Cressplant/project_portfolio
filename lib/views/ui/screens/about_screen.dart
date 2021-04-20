import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70.0),
          child: Padding(padding: const EdgeInsets.all(10.0), child: Center(child: CustomTitle(leading: Icon(Icons.person), title: 'About Me')))),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: Globals.maxPageWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mediumVerticalSpacer,
                CustomTitle(
                  leading: Icon(Icons.description),
                  title: 'Summary',
                ),

                mediumVerticalSpacer,

                Text('Some crap about me.'),

                largeVerticalSpacer,

                CustomTitle(
                  leading: Icon(Icons.work),
                  title: 'Experience',
                ),

                mediumVerticalSpacer,

                Text(''), //! ADD TILES

                largeVerticalSpacer,

                CustomTitle(
                  leading: Icon(Icons.cast_for_education),
                  title: 'Education',
                ),

                mediumVerticalSpacer,

                Text('BA (Hons) Business Studies with Enterprise, 2:1'),

                largeVerticalSpacer,

                CustomTitle(
                  leading: Icon(Icons.battery_alert), //!
                  title: 'Accomplishments',
                ),

                mediumVerticalSpacer,

                Text(''),

                largeVerticalSpacer
              ],
            ),
          ),
        ),
      ),
    );
  }
}
