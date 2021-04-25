import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets padding;

  CustomCard({required this.child, this.color, this.padding = const EdgeInsets.all(0.0)});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: customBoxDecoration(context).copyWith(color: color ?? Theme.of(context).cardColor),
        padding: padding,
        child: child);
  }
}
