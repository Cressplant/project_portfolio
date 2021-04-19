import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';

class GitHubCard extends StatelessWidget {
  final bool disabled;
  final Project project;

  GitHubCard({this.disabled = false, required this.project});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: _theme.cardColor,
        ),
        child: Row(
          children: [
            Image.asset(''), //! github logo

            SizedBox(
              width: 15.0,
            ),

            Expanded(
              child: Column(
                children: [
                  Text(project.title),

                  smallVerticalSpacer,

                  Text('Public') //? add buttons?
                ],
              ),
            )
          ],
        ));
  }
}
