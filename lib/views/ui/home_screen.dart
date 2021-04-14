import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/database.dart';
import 'package:project_portfolio/views/ui/overlays/handshake_overlay.dart';
import 'package:project_portfolio/views/ui/project_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataBase _dataBase = DataBase();
  List<Project>? _projects;

  @override
  void initState() {
    // _projects = _dataBase.getData(collection: 'projects').values.map((e) => Project.fromMap(e)).toList();
    _projects = [];

    WidgetsBinding.instance?.addPostFrameCallback((_) => showHandShakeOverlay(context));

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

  // Future<void> _showHandshakeFloatingModal(BuildContext context) => showCustomModalBottomSheet(
  //     context: context,
  //     builder: (context) => DefaultDialog(
  //             child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [],
  //         )));
}
