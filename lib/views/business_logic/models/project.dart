import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';
import 'package:flutter/material.dart';

class Project {
  final String title;
  final String logo;
  final String coverImage;
  final Color coverBackgroundColor;
  final List<String> screenshots;
  final String description;
  final List<Tag> tags;
  final Color primaryColor;
  final Color accentColor;
  final String? repositoryLink;
  final String? appStoreLink;
  final String? playStoreLink;
  final String? webLink;

  Project(
      {required this.title,
      required this.logo,
      required this.coverImage,
      required this.coverBackgroundColor,
      required this.screenshots,
      required this.description,
      required this.tags,
      required this.primaryColor,
      required this.accentColor,
      required this.repositoryLink,
      required this.appStoreLink,
      required this.playStoreLink,
      required this.webLink
      });

  factory Project.fromMap(Map<String, dynamic> _map) {

    // print('running Project.fromMap(Map<String, dynamic> $_map)');

    return Project(
        title: _map['title'] ?? '',
        logo: _map['logo'] ?? '', // TODO: add placeholder
        description: _map['description'] ?? '',
        coverImage: _map['coverImage'], // TODO: add placeholder
        coverBackgroundColor: Color(_map['coverBackgroundColor']),
        screenshots: List<String>.from(_map['screenshots'] ?? [],),
        primaryColor: Color(_map['primaryColor']),
        accentColor: Color(_map['accentColor']),
        tags: List<Tag>.from(_map['tags']?.map((e) => Globals.tagGlossary[e]).toList() ?? []),
        repositoryLink: _map['repositoryLink'],
        appStoreLink: _map['appStoreLink'],
        playStoreLink: _map['playStoreLink'],
        webLink: _map['webLink']
        );
  }
}
