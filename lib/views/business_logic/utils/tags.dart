
import 'package:flutter/material.dart';

final Map<String, Tag> tags = {
'001' : Tag(id: '001', title: 'Commercial', color: Colors.blueAccent),
'002' : Tag(id: '002', title: 'Recreational', color: Colors.orange),
'003' : Tag(id: '003', title: 'Live', color: Colors.red),
'004' : Tag(id: '004', title: 'Bloc', color: Colors.blue),
'005' : Tag(id: '005', title: 'Provider', color: Colors.lightBlue),
'006' : Tag(id: '006', title: 'Firebase', color: Colors.yellow),
'007' : Tag(id: '007', title: 'ML', color: Colors.grey),
'008' : Tag(id: '008', title: 'Web', color: Colors.white),
'009' : Tag(id: '009', title: 'Freezed', color: Colors.white),
};


class Tag {

  final String id;
  final String title;
  final Color color;

Tag({ required this.id, required this.title, required this.color });

}


