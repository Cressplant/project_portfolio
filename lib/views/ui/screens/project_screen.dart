import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/formatting.dart';
import 'package:project_portfolio/views/business_logic/utils/launch.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/contact_actions.dart';
import 'package:project_portfolio/views/utils/contact_options_popup_menu.dart';
import 'package:project_portfolio/views/utils/custom_button.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';
import 'package:project_portfolio/views/utils/github_card.dart';
import 'package:project_portfolio/views/utils/screen_shot_carousel.dart';
import 'package:project_portfolio/views/utils/tag_wrap.dart';

class ProjectScreen extends StatelessWidget {
  static const String id = '/project';

  final Project _project;

  ProjectScreen(this._project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    bool _mobile = checkMobile(context);
    double _screenshotHeight = 450.0;

    return Scaffold(
      backgroundColor: _theme.cardColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 50.0),
        child: Column(
          children: [
            AppBar(
                centerTitle: true,
                backgroundColor: _theme.cardColor,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      _project.logo,
                      height: 30.0,
                      width: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(_project.title)
                  ],
                ),
                actions: [if (_mobile) ContactOptionsPopupMenu()]),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        if (_project.screenshots.isNotEmpty) ImageCarousel(height: _screenshotHeight, images: _project.screenshots),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTitle(title: 'Summary'),
                              mediumVerticalSpacer,
                              Text(_project.summary),
                              mediumVerticalSpacer,
                              CustomTitle(title: 'About'),
                              mediumVerticalSpacer,
                              Text(_project.description),
                              mediumVerticalSpacer,
                              TagWrap(_project.tags),
                              largeVerticalSpacer,
                              if (_project.appStoreLink != null || _project.playStoreLink != null || _project.webLink != null) ...[
                                CustomTitle(title: 'Links'),
                                mediumVerticalSpacer,
                                Wrap(
                                  spacing: 10.0,
                                  runSpacing: 10.0,
                                  children: [
                                    if (_project.appStoreLink != null)
                                      CustomButton(
                                        leading: Image.asset(
                                          'images/app_store_logo.png',
                                          height: 26,
                                          width: 26,
                                        ),
                                        title: 'App Store',
                                        onPressed: () => openLink(_project.appStoreLink),
                                      ),
                                    if (_project.playStoreLink != null)
                                      CustomButton(
                                        leading: Image.asset(
                                          'images/play_store_logo.png',
                                          height: 26,
                                          width: 26,
                                        ),
                                        title: 'Play Store',
                                        onPressed: () => openLink(_project.playStoreLink),
                                      ),
                                    if (_project.webLink != null)
                                      CustomButton(
                                        leading: Icon(FontAwesomeIcons.globeEurope),
                                        title: 'Web',
                                        onPressed: () => openLink(_project.webLink),
                                      ),
                                  ],
                                ),
                                largeVerticalSpacer,
                              ],
                              CustomTitle(leading: Icon(_project.repositoryLink != null ? Icons.lock_open : Icons.lock), title: 'Repository'),
                              if (_project.repositoryLink != null) ...[mediumVerticalSpacer, Center(child: GitHubCard(project: _project))]
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  if (!_mobile)
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 100),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [...contactActions],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
