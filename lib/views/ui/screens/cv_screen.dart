import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/utils/globals.dart';
import 'package:project_portfolio/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/ui/screens/cv_pdf_screen.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/job_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: [
            PreferredSize(
                preferredSize: Size(double.infinity, 70.0),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50.0,
                        ),
                        CustomTitle(leading: Icon(Icons.description), title: 'CV'),
                        SizedBox(
                          width: 20.0,
                        ),
                        TextButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.description),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Generate PDF')
                            ],
                          ),
                          onPressed: () => Navigator.pushNamed(context, CVPDFScreen.id),
                        )
                      ],
                    ))),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: Globals.maxPageWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(
                        leading: Icon(Icons.info),
                        title: 'Summary',
                      ),
                      mediumVerticalSpacer,
                      Text(Globals.summary, style: TextStyle(height: 1.5),),
                      largeVerticalSpacer,
                      CustomTitle(
                        leading: Icon(Icons.person),
                        title: 'About',
                      ),
                      mediumVerticalSpacer,
                      Text(Globals.about),
                      largeVerticalSpacer,
                      CustomTitle(
                        leading: Icon(FontAwesomeIcons.magic),
                        title: 'Skills',
                      ),
                      mediumVerticalSpacer,
                      Wrap(
                          spacing: 5.0,
                          runSpacing: 5.0,
                          children: Globals.skills
                              .map((_skill) => Chip(
                                    label: Text(_skill),
                                    elevation: 1,
                                  ))
                              .toList()),
                      largeVerticalSpacer,
                      CustomTitle(
                        leading: Icon(Icons.work),
                        title: 'Experience',
                      ),
                      mediumVerticalSpacer,
                      ...Globals.jobList.map((_job) => JobTile(_job)),
                      largeVerticalSpacer,
                      CustomTitle(
                        leading: FaIcon(FontAwesomeIcons.university),
                        title: 'Education',
                      ),
                      mediumVerticalSpacer,
                      ListTile(
                        title: Text('Bournemouth University', style: _theme.textTheme.caption),
                        subtitle: Text('BA (Hons) Business Studies with Enterprise, 2:1', style: _theme.textTheme.bodyText1),
                      ),
                      largeVerticalSpacer,
                      CustomTitle(
                        leading: FaIcon(FontAwesomeIcons.trophy),
                        title: 'Accomplishments',
                      ),
                      mediumVerticalSpacer,
                      ListTile(
                        title: Text('Santander Entrepreneurship Initiative 2019', style: _theme.textTheme.caption),
                        subtitle: Text('Winner & Funding Recipient', style: _theme.textTheme.bodyText1),
                      ),
                      ListTile(
                        title: Text('Bournemouth University Pitch at the Pitch 2017', style: _theme.textTheme.caption),
                        subtitle: Text('Winner & Funding Recipient', style: _theme.textTheme.bodyText1),
                      ),
                      largeVerticalSpacer,
                      largeVerticalSpacer
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
