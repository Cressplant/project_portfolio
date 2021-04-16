import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/project.dart';

class ProjectScreen extends StatelessWidget {
  final Project _project;

  ProjectScreen(this._project);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _project.primaryColor,
        title: Text(_project.title),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
