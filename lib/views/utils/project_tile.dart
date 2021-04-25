import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/formatting.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/tag_wrap.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  ProjectTile(this.project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    bool _mobile = checkMobile(context);
    // double _tileHeight = _mobile ? 240.0 : 320.0;
    double _tileHeight = _mobile ? 260.0 : 320.0;

    return InkWell(
      onTap: () => Navigator.push<Null>(context, MaterialPageRoute(builder: (context) => ProjectScreen(project))),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(1, 1))],
        ),
        child: Column(
          children: [
            Container(
              height: _tileHeight,
              decoration: BoxDecoration(
                  color: project.coverBackgroundColor,
                  // borderRadius: BorderRadius.circular(15),

                  image: DecorationImage(alignment: Alignment.bottomCenter, fit: BoxFit.fitHeight, image: AssetImage(project.coverImage))),
              child: Stack(
                children: [
                  // Container(color: _theme.accentColor.withOpacity(0.25)),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: _tileHeight * 0.66,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [_theme.accentColor.withOpacity(0.65), _theme.accentColor.withOpacity(0.15)], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                    ),
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: TagWrap([
                              if (project.tags.contains(Globals.tagGlossary['019'])) Globals.tagGlossary['019'],
                              if (project.tags.contains(Globals.tagGlossary['006'])) Globals.tagGlossary['006'],
                              if (project.tags.contains(Globals.tagGlossary['005'])) Globals.tagGlossary['005'],
                              if (project.tags.contains(Globals.tagGlossary['000'])) Globals.tagGlossary['000'] else if (project.tags.contains(Globals.tagGlossary['001'])) Globals.tagGlossary['001'],
                              if (project.tags.contains(Globals.tagGlossary['002'])) Globals.tagGlossary['002']
                            ]),
                          ),
                          Positioned(
                              bottom: 10.0,
                              right: 6.0,
                              // alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                                child: CustomTitle(leading: Image.asset(project.logo, height: 20.0, width: 20.0), title: project.title),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
