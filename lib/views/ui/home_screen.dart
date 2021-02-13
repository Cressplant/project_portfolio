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
        // appBar: PreferredSize(
        //   preferredSize: Size(0.0,0.0),
        //   child: Container(
        //     color: Colors.red
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).cardColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact'),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [

            SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    //TODO ADD PAINT SPOTS BEHIND THIS SECTION THAT MOVE UPON SCROLL?
                    color: Theme.of(context).cardColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 65,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Flutter Developer'),
                              SizedBox(height: 4.0),
                              Text('hyub ubhubhb ubhbbg bgvb jbhbgy jbhvgvg.')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ])
            ),

            SliverAppBar(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.vertical(
                //     bottom: Radius.circular(20),
                //   ),
                // ),
                backgroundColor: Theme.of(context).cardColor,
                elevation: 1,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 0,
                bottom: PreferredSize(
                    // preferredSize: Size(double.infinity, 44.0),
                    preferredSize: Size(double.infinity, 44.0),
                    child: Container(
                      //TODO ADD BLUR BEHIND THIS SECTION TO SEPARATE IT?
                      height: 44.0,
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Flutter Projects', style: TextStyle(color: Colors.white),),
                        ),
                      )
                    )))
          ],
          body: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 25.0,
              horizontal: 5.0
            ),
            child: Column(
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
      ),
    );
  }
}