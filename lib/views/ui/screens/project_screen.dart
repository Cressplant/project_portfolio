import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/colors.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';

class ProjectScreen extends StatelessWidget {
  final Project _project;

  ProjectScreen(this._project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _theme.cardColor,
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: _theme.cardColor,
              title: Image.network(
                _project.logo,
                height: 30.0,
                width: 30.0,
              ),
            ),
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
                  CustomTitle(title: _project.title),
                  SizedBox(height: 10.0),
                  Text(_project.description),
                  SizedBox(height: 10.0),
                  Wrap(
                      spacing: 3.0,
                      runSpacing: 1.0,
                      children: _project.tags
                          .map((_tag) => Chip(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                label: Text(_tag.title, style: TextStyle(color: getContrastingTextColor(_tag.color) ),),
                                labelStyle: _theme.textTheme.caption?.copyWith(color: Colors.white),
                                backgroundColor: _tag.color,
                              ))
                          .toList() 
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
