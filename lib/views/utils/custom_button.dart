import 'package:flutter/material.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback? onPressed;
  final String title;
  final Widget? leading;

  CustomButton({required this.title, this.onPressed, this.leading});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return CustomCard(
      color: _theme.primaryColor,
        child: InkWell(
          onTap: onPressed,
          child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
          if (leading != null) Padding(padding: EdgeInsets.only(right: 10.0), child: leading),
          Text(
            title,
            style: _theme.textTheme.headline4?.copyWith(color: Colors.white)
          ),
      ],
    ),
        ));

  }
}
