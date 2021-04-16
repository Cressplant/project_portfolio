import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Color? color;

  CustomTitle({required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    TextStyle? _titleStyle = _theme.textTheme.headline3;
    double _textSize = _titleStyle?.fontSize ?? 10;

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: _textSize / 2,
          width: title.length * (_textSize / 2),
          decoration: BoxDecoration(
              color: color ?? _theme.accentColor,
              image: DecorationImage(fit: BoxFit.contain, repeat: ImageRepeat.repeat, image: AssetImage('images/wavy_line_pattern.png'))),
        ),
        Text(title, style: _titleStyle),
      ],
    );
  }
}
