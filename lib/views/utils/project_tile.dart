import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';
import 'package:project_portfolio/views/business_logic/utils/colors.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';
import 'package:project_portfolio/views/utils/tag_chip.dart';
import 'package:project_portfolio/views/utils/tag_wrap.dart';

class ProjectTile extends StatelessWidget {
  Project project;

  ProjectTile(this.project);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return InkWell(
      onTap: () => Navigator.push<Null>(context, MaterialPageRoute(builder: (context) => ProjectScreen(project))),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(1, 1))],
        ),
        child: Column(
          children: [
            Container(
              height: 240.0,
              decoration: BoxDecoration(
                  color: project.accentColor,
                  // borderRadius: BorderRadius.circular(15),

                  image: DecorationImage(
                      alignment: Alignment.bottomCenter, fit: BoxFit.contain, image: AssetImage(project.coverImage)) //! CONVERT TO NETWORK IMAGE
                  ),
              child: Stack(
                children: [
                  Container(color: _theme.accentColor.withOpacity(0.3)),
                  // ImageFiltered(
                  //     imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  //     child: ShaderMask(
                  //       shaderCallback: (rect) {
                  //         return LinearGradient(
                  //             begin: Alignment.topCenter,
                  //             end: Alignment.bottomCenter,
                  //             colors: [Colors.black, Colors.black.withOpacity(0)],
                  //             stops: [0.4, 0.75]).createShader(rect);
                  //       },
                  //       blendMode: BlendMode.dstOut,
                  //       child: Image.asset(project.coverImage, fit: BoxFit.cover, alignment: Alignment.bottomCenter),
                  //     )),
                  //
                  //

                  
                  Positioned(top: 10.0, right: 10.0, child: TagWrap([
                       if (project.tags.contains(Globals.tagGlossary['000'])) Globals.tagGlossary['000']
                       else if(project.tags.contains(Globals.tagGlossary['001'])) Globals.tagGlossary['001'],
                       if (project.tags.contains(Globals.tagGlossary['002'])) Globals.tagGlossary['002']
                  ]),
                ),

                  Positioned(
                      bottom: 10.0,
                      right: 6.0,
                      // alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomCard(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(project.logo, height: 20.0, width: 20.0),
                                  SizedBox(width: 10.0),
                                  Text(project.title, style: _theme.textTheme.bodyText1),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 10.0,
                            // ),
                            // Wrap(
                            //     spacing: 3.0,
                            //     runSpacing: 1.0,
                            //     children: project.tags
                            //         .map((_tag) => Chip(
                            //               visualDensity: VisualDensity.compact,
                            //               materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            //               label: Text(_tag.title, style: TextStyle( color: getContrastingTextColor(_tag.color) ),),
                            //               labelStyle: _theme.textTheme.caption?.copyWith(color: Colors.white),
                            //               backgroundColor: _tag.color,
                            //             ))
                            //         .toList() // TODO: assign text color using background invert?
                            //     )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            // Container(
            //   // height: 30.0,
            //   color: project.primaryColor,
            //   padding: EdgeInsets.all(4.0),
            //   child: Row(
            //     children: [
            //       Image.network(
            //         project.logo,
            //         height: 20.0,
            //         width: 20.0,
            //       ),
            //       SizedBox(width: 10.0),
            //       Text(project.title, style: _theme.textTheme.bodyText1),
            //       Spacer(),
            //       Wrap(
            //           spacing: 3.0,
            //           runSpacing: 1.0,
            //           children: project.tags
            //               .map((_tag) => Chip(
            //                     visualDensity: VisualDensity.compact,
            //                     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //                     label: Text(_tag.title),
            //                     labelStyle: _theme.textTheme.caption?.copyWith(color: Colors.white),
            //                     backgroundColor: _tag.color,
            //                   ))
            //               .toList() // TODO: assign text color using background invert?
            //           )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
