import 'package:flutter/material.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Widget? leading;

  CustomTitle({required this.title, this.leading});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);


    return CustomCard(
      padding: EdgeInsets.all(12.0),
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

  }
}
