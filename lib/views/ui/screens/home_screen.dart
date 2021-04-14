import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/database.dart';
import 'package:project_portfolio/views/ui/overlays/handshake_overlay.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataBase _dataBase = DataBase();
  List<Project>? _projects;

  @override
  void initState() {
    _projects = _dataBase.getData(collection: 'projects').values.map((e) => Project.fromMap(e)).toList();
    // _projects = [];

    WidgetsBinding.instance?.addPostFrameCallback((_) => showHandShakeOverlay(context));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size(0.0,0.0),
        //   child: Container(
        //     color: Colors.red
        //   ),
        // ),
        backgroundColor: _theme.cardColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: _theme.cardColor,
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
                color: _theme.cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AppBar(
                      elevation: 0,
                      actions: [
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Container(
                        // clipBehavior: Clip.hardEdge,
                        height: 160,
                        color: _theme.primaryColor,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 80,
                                width: double.infinity,
                                decoration: BoxDecoration(color: _theme.cardColor, borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4.0)], image: DecorationImage(image: AssetImage('images/profile_picture.jpeg'))),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Flutter Developer',
                            style: _theme.textTheme.headline3,
                          ),
                          SizedBox(height: 4.0),
                          Text('hyub ubhubhb ubhbbg bgvb jbhbgy jbhvgvg.')
                        ],
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
                backgroundColor: _theme.cardColor,
                // elevation: 0,

                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 0,
                bottom: PreferredSize(
                    // preferredSize: Size(double.infinity, 44.0),
                    preferredSize: Size(double.infinity, 44.0),
                    child: Text(
                      'Projects',
                      style: _theme.textTheme.headline3,
                      // style: TextStyle(color: Colors.white),
                    )))
          ],
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: Column(
                children: _projects
                        ?.map((_project) => ListTile(
                            // tileColor: _theme.accentColor,
                            isThreeLine: true,
                            onTap: () => Navigator.push<Null>(context, MaterialPageRoute(builder: (context) => ProjectScreen(_project))),
                            leading: Image.network(_project.image),
                            title: Text(_project.title),
                            // subtitle: Text(_project.description),
                            subtitle: Wrap(
                                children: _project.tags
                                    .map((_tag) => Padding(
                                          padding: const EdgeInsets.fromLTRB(0.0, 2.0, 4.0, 2.0),
                                          child: Chip(
                                            label: Text(_tag.title),
                                            labelStyle: _theme.textTheme.caption?.copyWith(color: Colors.white),
                                            backgroundColor: _tag.color,
                                          ),
                                        ))
                                    .toList() // TODO: assign text color using background invert?
                                )))
                        .toList() ??
                    []),
          ),
        ),
      ),
    );
  }

  // Future<void> _showHandshakeFloatingModal(BuildContext context) => showCustomModalBottomSheet(
  //     context: context,
  //     builder: (context) => DefaultDialog(
  //             child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [],
  //         )));
}
