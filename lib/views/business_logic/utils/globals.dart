import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';

class Globals {
  static const String title = 'Project Portfolio';

  static const double maxPageWidth = 800.0;

  static const String phone = '+447592961917';
  static const String email = 'o.f.f.newman@gmail.com';
  static const String linkedIn = 'https://www.linkedin.com/in/oscar-newman-21b84312a/';

  static const String openPhoneURL = 'tel:$phone';
  static const String openEmailURL = 'tel:$email';

  static final Map<String, Tag> tagGlossary = {
    '000': Tag(id: '000', title: 'Solo', color: Colors.blue.shade700),
    '001': Tag(id: '001', title: 'Team', color: Colors.orangeAccent),
    '002': Tag(id: '002', title: 'Flutter', color: Color(0xff37C8F5)),
    '003': Tag(id: '003', title: 'Commercial', color: Colors.blue.shade300),
    '004': Tag(id: '004', title: 'Recreational', color: Colors.orangeAccent),
    '005': Tag(id: '005', title: 'Live', color: Colors.red),
    '006': Tag(id: '006', title: 'Public', color: Colors.lightBlue, iconData: Icons.lock_open),
    '007': Tag(id: '007', title: 'iOS', color: Colors.grey.shade100),
    '008': Tag(id: '008', title: 'Android', color: Colors.green),
    '009': Tag(id: '009', title: 'Web', color: Colors.grey),
    '010': Tag(id: '010', title: 'Null Safety', color: Colors.white),
    '011': Tag(id: '011', title: 'SQL', color: Colors.blue.shade400),
    '012': Tag(id: '012', title: 'NOSQL', color: Colors.blue.shade400),
    '013': Tag(id: '013', title: 'Firebase', color: Colors.yellow),
    '014': Tag(id: '014', title: 'Bloc', color: Colors.blue.shade400),
    '015': Tag(id: '015', title: 'Provider', color: Colors.lightBlue),
    '016': Tag(id: '016', title: 'ML', color: Colors.grey),
    '017': Tag(id: '017', title: 'Freezed', color: Colors.white),
    '018': Tag(id: '018', title: 'WIP', color: Colors.redAccent),
    '019': Tag(id: '019', title: 'Private', color: Colors.blue.shade900, iconData: Icons.lock),
  };
}
