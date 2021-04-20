import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';

class Globals {
  static const String title = 'Project Portfolio';

  static const double maxPageWidth = 900.0;

  static const String phoneNumber = '+447592961917';
  static const String email = 'o.f.f.newman@gmail.com';
  static const String linkedIn = 'https://www.linkedin.com/in/oscar-newman-21b84312a/';

  static final Map<String, Tag> tagGlossary = {
    '000': Tag(id: '000', title: 'Solo', color: Colors.blue.shade700),
    '001': Tag(id: '001', title: 'Team', color: Colors.orangeAccent),
    '002': Tag(id: '002', title: 'Flutter', color: Color(0xff37C8F5)),
    '003': Tag(id: '003', title: 'Commercial', color: Colors.blue.shade300),
    '004': Tag(id: '004', title: 'Recreational', color: Colors.orange),
    '005': Tag(id: '005', title: 'Live', color: Colors.red),
    '006': Tag(id: '006', title: 'Public', color: Colors.lightBlue),
    '007': Tag(id: '007', title: 'Web', color: Colors.grey),
    '008': Tag(id: '008', title: 'Null Safety', color: Colors.white),
    '009': Tag(id: '009', title: 'SQL', color: Colors.blue.shade400),
    '010': Tag(id: '010', title: 'NOSQL', color: Colors.blue.shade400),
    '011': Tag(id: '011', title: 'Firebase', color: Colors.yellow),
    '012': Tag(id: '012', title: 'Bloc', color: Colors.blue.shade400),
    '013': Tag(id: '013', title: 'Provider', color: Colors.lightBlue),
    '014': Tag(id: '014', title: 'ML', color: Colors.grey),
    '015': Tag(id: '015', title: 'Freezed', color: Colors.white),
  };
}
