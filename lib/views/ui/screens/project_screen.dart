import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/colors.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/tag_chip.dart';
import 'package:project_portfolio/views/utils/tag_wrap.dart';

class ProjectScreen extends StatelessWidget {
  final Project _project;

  ProjectScreen(this._project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _theme.cardColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: _theme.cardColor,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              _project.logo,
              height: 30.0,
              width: 30.0,
            ),
            SizedBox(width: 10.0),
            Text(_project.title)
          ],
        ),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(15.0),
        child: Align(
          alignment: Alignment(-0.3, 0.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700.0),
            child: Column(
              children: [
                if (_project.screenshots.isNotEmpty)
                  SizedBox(
                    height: 400.0,
                    child: PageView(
                        children: _project.screenshots
                            .map((_ss) => Image.asset(
                                  _ss,
                                  // height: 400,
                                ))
                            .toList()),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(title: 'About'),
                      mediumVerticalSpacer,
                      Text(_project.description),
                      mediumVerticalSpacer,
                      TagWrap(_project.tags),
                      largeVerticalSpacer,
                      CustomTitle(title: 'Source Code'),
                      mediumVerticalSpacer,
                      ListTile()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
