import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/github_card.dart';
import 'package:project_portfolio/views/utils/pageview_indicator.dart';
import 'package:project_portfolio/views/utils/tag_wrap.dart';

class ProjectScreen extends StatefulWidget {
  final Project _project;

  ProjectScreen(this._project);

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  PageController _screenshotPageController = PageController();
  int _screenshotIndex = 0;

  @override
  void dispose() {
    _screenshotPageController.dispose();
    super.dispose();
  }

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
              widget._project.logo,
              height: 30.0,
              width: 30.0,
            ),
            SizedBox(width: 10.0),
            Text(widget._project.title)
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
                if (widget._project.screenshots.isNotEmpty)
                  SizedBox(
                    height: 400.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: PageView(
                              controller: _screenshotPageController,
                              onPageChanged: (_index) {
                                setState(() {
                                  _screenshotIndex = _index;
                                });
                              },
                              children: widget._project.screenshots
                                  .map((_ss) => Image.asset(
                                        _ss,
                                        // height: 400,
                                      ))
                                  .toList()),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IgnorePointer(
                            child: Container(
                              width: 40.0,
                              height: 400.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [_theme.cardColor, _theme.cardColor.withOpacity(0.0)], begin: Alignment.centerLeft, end: Alignment.centerRight)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IgnorePointer(
                            child: Container(
                              width: 40.0,
                              height: 400.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [_theme.cardColor, _theme.cardColor.withOpacity(0.0)], begin: Alignment.centerRight, end: Alignment.centerLeft)),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [for (int i = 0; i < widget._project.screenshots.length; i++) PageViewIndicator(active: i == _screenshotIndex)]))
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(title: 'About'),
                      mediumVerticalSpacer,
                      Text(widget._project.description),
                      mediumVerticalSpacer,
                      TagWrap(widget._project.tags),
                      largeVerticalSpacer,
                      CustomTitle(title: 'Source Code'),
                      mediumVerticalSpacer,
                      GitHubCard(project: widget._project)
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
