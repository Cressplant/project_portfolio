
import 'package:flutter/material.dart';
import 'package:project_portfolio/views/utils/pageview_indicator.dart';


class ImageCarousel extends StatefulWidget {

  final List<String> images;
  final double height;

  ImageCarousel({ required this.height, required this.images });

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  PageController _pageController = PageController();
  int _imageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);

    return  SizedBox(
                            height: widget.height,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0, bottom: 25.0),
                                  child: PageView(
                                      controller: _pageController,
                                      onPageChanged: (_index) {
                                        setState(() {
                                          _imageIndex = _index;
                                        });
                                      },
                                      children: widget.images
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
                                      height: widget.height,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [_theme.cardColor, _theme.cardColor.withOpacity(0.0)],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight)),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IgnorePointer(
                                    child: Container(
                                      width: 40.0,
                                      height: widget.height,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [_theme.cardColor, _theme.cardColor.withOpacity(0.0)],
                                              begin: Alignment.centerRight,
                                              end: Alignment.centerLeft)),
                                    ),
                                  ),
                                ),
                                if (widget.images.length > 1)
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                                        for (int i = 0; i < widget.images.length; i++)
                                          PageViewIndicator(
                                            active: i == _imageIndex,
                                            onPressed: () {
                                              _pageController.animateToPage(i, duration: Duration(milliseconds: 250), curve: Curves.easeIn);
                                            },
                                          )
                                      ]))
                              ],
                            ),
                          );
  }
}