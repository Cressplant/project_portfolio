import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  CustomCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: defaultDecoration(context), padding: EdgeInsets.all(12.0), child: child);
  }
}
