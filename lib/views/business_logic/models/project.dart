import 'package:project_portfolio/views/business_logic/utils/tags.dart';
import 'package:flutter/material.dart';

class Project {
  final String title;
  final String image;
  final String description;
  final List<Tag> tags;
  final Color primaryColor;
  final Color accentColor;

  Project({required this.title, required this.image, required this.description, required this.tags, required this.primaryColor, required this.accentColor});

  factory Project.fromMap(Map<String, dynamic> _map) {
    return Project(
        title: _map['title'] ?? '',
        image: _map['image'] ?? '', // TODO: add placeholder
        description: _map['description'] ?? '',
        primaryColor: Color(_map['primaryColor']),
        accentColor: Color(_map['accentColor']),
        tags: List<Tag>.from(_map['tags']?.map((e) => tagsGlossary[e]).toList() ?? []));
  }
}
