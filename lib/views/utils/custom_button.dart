import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Widget? leading;
  final EdgeInsets padding;

  CustomButton({required this.title, this.onPressed, this.leading, this.padding = const EdgeInsets.all(12.0)});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return MouseRegion(
      cursor: onPressed != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onPressed,
        child: CustomCard(
            padding: padding,
            color: _theme.primaryColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null) Padding(padding: EdgeInsets.only(right: 10.0), child: leading),
                Text(title, style: _theme.textTheme.headline4?.copyWith(color: Colors.white)),
              ],
            )),
      ),
    );
  }
}
