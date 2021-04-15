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
        Container(color: color ?? _theme.accentColor, height: _textSize / 2, width: title.length * (_textSize / 2)),
        Text(title, style: _titleStyle),
      ],
    );
  }
}
