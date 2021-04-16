import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/database.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';
import 'package:project_portfolio/views/ui/overlays/handshake_overlay.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';
import 'package:project_portfolio/views/utils/project_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataBase _dataBase = DataBase();
  List<Project>? _projects;
  // Alignment _nameCardAlignment = Alignment(-0.1, 1);

  @override
  void initState() {
    _projects = _dataBase.getData(collection: 'projects').values.map((e) => Project.fromMap(e)).toList();
    // _projects = [];

  //  _animateNameCard();

    WidgetsBinding.instance?.addPostFrameCallback((_) => showHandShakeOverlay(context));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);
    double _width = MediaQuery.of(context).size.width;
    bool _mobile = true; // checkMobile(context); //!

    return SafeArea(
      child: Scaffold(
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
                  height: 300.0,
                  decoration: BoxDecoration(
                      color: _theme.cardColor,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/google bg.JPG'),
                      )),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
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
                      ),
                      Align(
                        alignment: Alignment(0.5, 0.0),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4.0)],
                              color: _theme.accentColor,
                              image: DecorationImage(image: AssetImage('images/profile_picture.jpeg'))),
                        ),
                      ),
                      AnimatedAlign(
                        alignment: Alignment(-0.1, 0.15),
                        duration: Duration(milliseconds: 300),
                        child: CustomCard(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Oscar Newman', style: _theme.textTheme.headline4),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'Flutter Developer',
                              style: _theme.textTheme.caption,
                            )
                          ],
                        )),
                      ),
                      Align(
                        alignment: Alignment(0.15, 0.7),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: _width * 0.6),
                          child: Text(
                            'I am creative, driven, and try to implement simplicity & user experience into everything I create.',
                            style: _theme.textTheme.caption,
                          ),
                        ),
                      )
                    ],
                  )),
            ])),
            SliverAppBar(
                backgroundColor: _theme.cardColor,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 0,
                bottom: PreferredSize(
                    // preferredSize: Size(double.infinity, 44.0),
                    preferredSize: Size(double.infinity, 70.0),
                    child: Padding(padding: const EdgeInsets.all(10.0), child: CustomTitle(leading: Icon(Icons.folder_outlined), title: 'My Work')
                        // child: Text(
                        //   'Projects',
                        //   style: _theme.textTheme.headline3,
                        //   // style: TextStyle(color: Colors.white),
                        // ),

                        )))
          ],
          body: SingleChildScrollView(child: Column(children: _projects?.map((_project) => ProjectTile(_project)).toList() ?? [])),
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
  
  // Future<void> _animateNameCard() async {

  //   await Future.delayed(Duration(milliseconds: 800));

  //   setState(() {
  //   _nameCardAlignment =  Alignment(-0.1, 0.15);      
  //       });


  // }

}
