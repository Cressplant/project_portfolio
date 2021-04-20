import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';
import 'package:project_portfolio/views/utils/tag_chip.dart';

class TagWrap extends StatelessWidget {
  final List<Tag?> tags;

  TagWrap(this.tags);

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 4.0, runSpacing: 4.0, children: tags.map((_tag) => TagChip(_tag)).toList());
  }
}
