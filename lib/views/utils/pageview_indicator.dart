import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class PageViewIndicator extends StatelessWidget {
  PageViewIndicator({
    required this.active, 
    this.onPressed, 
    this.padding = const EdgeInsets.all(3.0),
    this.radius = 6
    });

  final bool active;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return MouseRegion(
      cursor: onPressed != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onPressed,
        child: Container(
          margin: padding,
          width: radius*2,
          height: radius*2,
          decoration: new BoxDecoration(
            color: active ? _theme.primaryColor : _theme.accentColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 0.5, // has the effect of softening the shadow
                spreadRadius: 0.5, // has the effect of extending the shadow
                offset: Offset(
                  0.5, // horizontal, move right 10
                  0.5, // vertical, move down 10
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}