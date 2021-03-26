import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/ui/project_screen.dart';
import 'package:project_portfolio/views/utils/default_dialog.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:project_portfolio/views/utils/floating_modal.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Project>? _projects;

  @override
  void initState() {
    _projects = [
      Project(
          image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4',
          title: 'Project Name',
          description: 'Details about the project.'),
      Project(
          image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4',
          title: 'Project Name',
          description: 'Details about the project.'),
      Project(
          image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4',
          title: 'Project Name',
          description: 'Details about the project.'),
      Project(
          image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4',
          title: 'Project Name',
          description: 'Details about the project.'),
      Project(
          image: 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/app_notifications_icon.png?alt=media&token=f990bca4-f2a9-46e5-8fe6-038d74993db4',
          title: 'Project Name',
          description: 'Details about the project.'),
    ];

    WidgetsBinding.instance?.addPostFrameCallback((_) => _showHandshakeFloatingModal(context: context));

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
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
            const BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact'),
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
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 65,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[Text('Flutter Developer'), SizedBox(height: 4.0), Text('hyub ubhubhb ubhbbg bgvb jbhbgy jbhvgvg.')],
                      ),
                    )
                  ],
                ),
              ),
            ])),
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
                            child: Text(
                              'Flutter Projects',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ))))
          ],
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: Column(
                children: _projects
                        ?.map((_project) => ListTile(
                              onTap: () => Navigator.push<Null>(context, MaterialPageRoute(builder: (context) => ProjectScreen(_project))),
                              leading: Image.network(_project.image),
                              title: Text(_project.title),
                              subtitle: Text(_project.description),
                            ))
                        .toList() ??
                    []),
          ),
        ),
      ),
    );
  }

  Future<void> _showHandshakeFloatingModal({required BuildContext context}) => showFloatingModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        ThemeData _theme = Theme.of(context);

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Hi there!',
                    ),
                    Text(
                      '*Oscar offers you a handshake*',
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 136.0,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('images/profile_picture.jpeg'),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              'images/handshake_emoji.png',
                              height: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Row(
              children: <Widget>[
                Expanded(
                    child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    )),
                    child: Center(
                      child: Text('Accept', style: _theme.textTheme.bodyText1?.copyWith(color: Colors.blue)),
                    ),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    _showHandshakeFloatingModal(context: context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey),
                    )),
                    child: Center(
                      child: Text('Ignore', style: _theme.textTheme.bodyText1?.copyWith(color: Colors.orange)),
                    ),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                    )),
                    child: Center(
                      child: Text(
                        'Refuse',
                        style: _theme.textTheme.bodyText1?.copyWith(color: Colors.red),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ],
        );
      });

  // Future<void> _showHandshakeFloatingModal(BuildContext context) => showCustomModalBottomSheet(
  //     context: context,
  //     builder: (context) => DefaultDialog(
  //             child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [],
  //         )));
}
