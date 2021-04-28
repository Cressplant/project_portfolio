import 'package:flutter/material.dart';

class Tag {
  final String id;
  final String title;
  final IconData? iconData;
  final Color color;

  Tag({required this.id, required this.title, required this.color, this.iconData});
}
