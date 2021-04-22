import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubCard extends StatelessWidget {
  final Project project;

  GitHubCard({required this.project});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    bool _public = project.repositoryLink != null;

    return Container(
      // constraints: BoxConstraints(maxWidth: 400.0),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   color: _public ? _theme.cardColor : _theme.backgroundColor,
      //   boxShadow: defaultBoxShadow(context)
      // ),
      decoration: customDecoration(context).copyWith(
          // color: _public ? _theme.cardColor : _theme.backgroundColor,
          color: _theme.cardColor),
      child: InkWell(
        onTap: _public
            ? () async {
                if (await canLaunch(project.repositoryLink ?? '')) {
                  await launch(project.repositoryLink ?? '');
                }
              }
            : null,
        child: Padding(
            padding: EdgeInsets.all(15.0),
            // decoration: BoxDecoration(
            //   color: _public ? _theme.cardColor : _theme.backgroundColor,
            // ),
            child: Row(
              children: [
                Image.asset(
                  'images/github_logo.png',
                  height: 60.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project.title),
                      smallVerticalSpacer,
                      Text('github.com')

                      //* Now hiding the card entirely if private
                      // Row(
                      //   children: [
                      //     Icon(_public ? Icons.lock_open : Icons.lock, size: 16),
                      //     SizedBox(width: 10.0),
                      //     Text(
                      //       _public ? 'Public' : 'Private',
                      //       style: _theme.textTheme.caption,
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
