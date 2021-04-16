import 'package:flutter/material.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Color? color;

  CustomTitle({required this.title, this.leading, this.color});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    // TextStyle? _titleStyle = _theme.textTheme.headline3;
    // double _textSize = _titleStyle?.fontSize ?? 10;

    return CustomCard(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leading != null) Padding(padding: EdgeInsets.only(right: 10.0), child: leading),
        Text(
          title,
          style: _theme.textTheme.headline4,
        ),
      ],
    ));

    // return Stack(
    //   alignment: Alignment.bottomLeft,
    //   children: [
    //     Container(
    //       height: _textSize / 2,
    //       width: title.length * (_textSize / 2),
    //       decoration: BoxDecoration(
    //           // color: color ?? _theme.accentColor,
    //           // image: DecorationImage(fit: BoxFit.contain, repeat: ImageRepeat.repeat, image: AssetImage('images/wavy_line_pattern.png'))
    //           ),
    //     ),
    //     Text(title, style: _titleStyle),
    //   ],
    // );
  }
}
