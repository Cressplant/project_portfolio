import 'package:project_portfolio/views/business_logic/utils/tags.dart';

class Project {

  final String title;
  final String image;
  final String description;
  final List<Tag> tags;

  Project({
      required this.title,
      required this.image,
      required this.description,
      required this.tags
      });

  factory Project.fromMap( Map<String, dynamic> _map ){

    return Project(
      title: _map['title'] ?? '',
      image: _map['image'] ?? '', // TODO: add placeholder
      description: _map['description'] ?? '',
      tags: _map['tags'] ?? []
    );

  }

}




