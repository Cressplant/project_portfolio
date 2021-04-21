import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/services/database.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/job_tile.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  DataBase _dataBase = DataBase();
  List<Job> _jobList = [];

  @override
  void initState() {
    _jobList = _dataBase.getData(collection: 'jobs').values.map((e) => Job.fromMap(e)).toList();

    super.initState();
  }

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
                Text(
                    '''I started programming in the last year of my business degree, I was in the process of setting up my own business - selling children's window blinds - and I needed a website. I was using WordPress but wanted to do things that themes and drag & drop builders couldn't cater for. So I started learning some basic Javascript and loved it.\n\nIt was started to regret not taking a computer science/engineering degree but decided to work with what I had and combined my new love of designing and writing software with the business accumen I had accumelated during my degree and first business.\n\nI started Tree Worker because I had some experience working with tree surgeons, and I could see there was a gap in the market. I also wanted to create something real (having gotten tired of everything being theoretical at uni), and I knew that as my first ever real project - and one that I was working on alone - I wasn't realistically going be able to compete within a saturated market. That may suggest I like to aim low with my expectations but I partnered this sensible project with lots of widly unrealistic deadlines to compensate - while working part time as an online tutor & digital marketer.\n\nTree Worker is now in a stable and very functional state, having all the features that I had envisioned for it, and I can now either direct all my efforts into marketing, or move onto other projects and let it grow organically & via small, incremeningly more efficient, long term ads. I intend to do the latter as I want to be a highly skilled programmer, and not dilute what I'm good at.\n\nI'm therefore looking for a developer role. I'm happy to continue working with Flutter, as it's a framework I love and have become very knowledgeable of, or learn another, learning always excites me.'''),
                largeVerticalSpacer,
                CustomTitle(
                  leading: Icon(Icons.work),
                  title: 'Experience',
                ),
                mediumVerticalSpacer,
                ..._jobList.map((_job) => JobTile(_job)),
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
