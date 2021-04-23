import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/services/database.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/job_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  Database _dataBase = Database();
  List<Job> _jobList = [];

  @override
  void initState() {
    _jobList = _dataBase.getData(collection: 'jobs').values.map((e) => Job.fromMap(e)).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        children: [
          PreferredSize(
              preferredSize: Size(double.infinity, 70.0),
              child: Padding(padding: const EdgeInsets.all(10.0), child: Center(child: CustomTitle(leading: Icon(Icons.person), title: 'About')))),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: Globals.maxPageWidth),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mediumVerticalSpacer,
                    CustomTitle(
                      leading: Icon(Icons.description),
                      title: 'Summary',
                    ),
                    mediumVerticalSpacer,
                    Text(Globals.about),
                    largeVerticalSpacer,
                    CustomTitle(
                      leading: Icon(Icons.description),
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
                    ..._jobList.map((_job) => JobTile(_job)),
                    largeVerticalSpacer,
                    CustomTitle(
                      leading: FaIcon(FontAwesomeIcons.university),
                      title: 'Education',
                    ),
                    mediumVerticalSpacer,
                    ListTile(
                      // leading: Image.asset(
                      //   'images/bu_logo.png',
                      //   height: 80.0,
                      //   width: 80.0,
                      // ),
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
                      // leading: Image.asset(
                      //   'images/santander_logo.png',
                      //   height: 80.0,
                      //   width: 80.0,
                      // ),
                      title: Text('Santander Entrepreneurship Initiative 2019', style: _theme.textTheme.caption),
                      subtitle: Text('Winner & Funding Recipient', style: _theme.textTheme.bodyText1),
                    ),
                    ListTile(
                      // leading: Image.asset(
                      //   'images/pitch_at_the_pitch_logo.jpg',
                      //   height: 80.0,
                      //   width: 80.0,
                      // ),
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
    );
  }
}
