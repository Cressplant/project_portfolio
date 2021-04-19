import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/tags.dart';

class Globals {
  static const title = 'Project Portfolio';

  static final Map<String, Tag> tagGlossary = {
    '000': Tag(id: '000', title: 'Solo', color: Colors.blue.shade700),
    '001': Tag(id: '001', title: 'Team', color: Colors.orangeAccent),
    '002': Tag(id: '002', title: 'Flutter', color: Color(0xff37C8F5)),
    '003': Tag(id: '003', title: 'Commercial', color: Colors.blue.shade300),
    '004': Tag(id: '004', title: 'Recreational', color: Colors.orange),
    '005': Tag(id: '005', title: 'Live', color: Colors.red),
    '006': Tag(id: '006', title: 'Web', color: Colors.grey),
    '007': Tag(id: '007', title: 'Null Safety', color: Colors.white),
    '008': Tag(id: '008', title: 'SQL', color: Colors.blue.shade400),
    '009': Tag(id: '009', title: 'NOSQL', color: Colors.blue.shade400),
    '010': Tag(id: '010', title: 'Firebase', color: Colors.yellow),
    '011': Tag(id: '011', title: 'Bloc', color: Colors.blue.shade400),
    '012': Tag(id: '012', title: 'Provider', color: Colors.lightBlue),
    '013': Tag(id: '013', title: 'ML', color: Colors.grey),
    '014': Tag(id: '014', title: 'Freezed', color: Colors.white),
  };
}
