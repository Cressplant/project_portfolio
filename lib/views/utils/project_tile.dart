import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';

class ProjectTile extends StatelessWidget {
  Project project;

  ProjectTile(this.project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return InkWell(
      onTap: () => Navigator.push<Null>(context, MaterialPageRoute(builder: (context) => ProjectScreen(project))),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: _theme.cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(1, 1))],
        ),
        child: Row(
          children: [
            Image.network(
              project.image,
              height: 60.0,
              width: 60.0,
            ),

            SizedBox(
              width: 15.0,
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title, style: _theme.textTheme.bodyText1),
                  SizedBox(height: 4.0),
                  Text(project.description, style: _theme.textTheme.caption),
                  SizedBox(height: 4.0),
                  Wrap(
                      spacing: 3.0,
                      runSpacing: 1.0,
                      children: project.tags
                          .map((_tag) => Chip(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                label: Text(_tag.title),
                                labelStyle: _theme.textTheme.caption?.copyWith(color: Colors.white),
                                backgroundColor: _tag.color,
                              ))
                          .toList() // TODO: assign text color using background invert?
                      )
                ],
              ),
            )

            // Spacer(),
          ],
        ),
      ),
    );
  }
}
