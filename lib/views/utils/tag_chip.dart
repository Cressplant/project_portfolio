import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/colors.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';

class TagChip extends StatelessWidget {
  final Tag? tag;

  TagChip(this.tag);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 2,
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(
        tag?.title ?? '',
        style: TextStyle(color: getContrastingTextColor(tag?.color ?? Colors.white)),
      ),
      // labelStyle: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
      backgroundColor: tag?.color,
    );
  }
}
