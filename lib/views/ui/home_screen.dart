import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/ui/project_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Project> _projects;

  @override
  void initState() {

    //TODO get from db
    _projects = [
      Project(image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4', title: 'Project Name', description: 'Details about the project.'),
      Project(image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4', title: 'Project Name', description: 'Details about the project.'),
      Project(image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4', title: 'Project Name', description: 'Details about the project.'),
      Project(image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4', title: 'Project Name', description: 'Details about the project.'),
      Project(image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4', title: 'Project Name', description: 'Details about the project.'),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [

            SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    color: Theme.of(context).cardColor,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 65,
                          ),
                        )
                    ),
                  ),

                  // Container(
                  //   padding: const EdgeInsets.all(15.0),
                  //   color: Theme.of(context).cardColor,
                  //   child: Row(
                  //     children: [
                  //       CircleAvatar(),
                  //       SizedBox(width: 10.0,),
                  //       Expanded(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text('Flutter Developer'),
                  //               SizedBox(height: 4.0),
                  //               Text('hyub ubhubhb ubhbbg bgvb jbhbgy jbhvgvg jvgg gvffch hvvfcfh hvgghv hvgvfc.')
                  //             ],
                  //           )
                  //       )
                  //     ],
                  //   ),
                  // )
                ])
            ),

            SliverAppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                backgroundColor: Theme.of(context).cardColor,
                elevation: 0,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 0,
                bottom: PreferredSize(
                    // preferredSize: Size(double.infinity, 44.0),
                    preferredSize: Size(double.infinity, 100.0),
                    child: SizedBox(
                      // height: 44.0,
                      height: 100.0,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Flutter Developer'),
                              SizedBox(height: 4.0),
                              Text('hyub ubhubhb ubhbbg bgvb jbhbgy jbhvgvg jvgg gvffch hvvfcfh hvgghv hvgvfc.')
                            ],
                          ),
                        )
                      )
                    )))
          ],
          body: Column(
            children: _projects.map((_project) =>
                ListTile(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ProjectScreen(_project)
                      )),
                  leading: Image.network(_project.image),
                  title: Text(_project.title),
                  subtitle: Text(_project.description),
                )).toList(),
          ),
        ),
      ),
    );
  }
}