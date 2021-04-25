import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
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
    '020': Tag(id: '020', title: 'Cloud Firestore', color: Colors.yellow),
    '021': Tag(id: '021', title: 'Stripe', color: Colors.red),
  };

  static const String summary = '''I am creative, driven, and like to make my work simple & functional.''';

  static const String about =
      '''I started programming as I needed a website for a business, retailing children's blinds, I set up while completing my business degree. Working on the website quickly became the most enjoyable aspect of running the business, and when the business was mature enough to require less supervision I began to regret not taking a computer science/engineering degree. I decided to work with what I had, and combined this love of designing and writing software with the business accumen I had accumelated. My background in business has since proven to be a huge asset, helping me consider the business value I'm adding as a programmer, and it often advises me away from jumping into rabbit holes that wouldn't be profitable to pursue.\n\nI started Tree Worker because I had some experience working with tree surgeons and I could see there was a gap in the market. I also wanted to create something real, having worked with enough theory at university, and I knew that as my first ever real project - and one that I was working on alone - I wasn't realistically going be able to compete within a saturated market. That may suggest I like to aim low, but I partnered this sensible project with an assortment of widly unrealistic deadlines to compensate - while working part time as an online tutor & digital marketer.\n\nTree Worker is now in a stable and very functional state, having all the features that I had originally envisioned for it, and I can now either direct all my efforts into marketing, or move onto other projects and let it grow organically & via small, incremeningly more efficient, long term ads. I intend to do the latter and I'm therefore looking for a developer role. Although I'd love to contine working with Flutter, I'm always open to working with other frameworks - and learning always excites me.''';

  static final List<Job> jobList = [
    Job(
        company: 'Tree Worker Software LTD',
        logo: 'assets/images/tree_worker_logo.png',
        role: 'Director',
        contract: '',
        description: '', //!
        start: DateTime(2019, 11),
        end: DateTime.now(),
        currentlyWorkingHere: true),
    Job(
        company: 'WEA',
        logo: 'assets/images/wea_logo.png',
        role: 'Marketing Coordinator',
        contract: 'Part Time',
        description: '', //!
        start: DateTime(2020, 3),
        end: DateTime.now(),
        currentlyWorkingHere: true),
    Job(
        company: 'Share with a Bear LTD',
        logo: 'assets/images/share_with_a_bear_logo.png',
        role: 'Director',
        contract: '',
        description: '', //!
        start: DateTime(2016, 10),
        end: DateTime(2019, 12),
        currentlyWorkingHere: false)
  ];

  static const List<String> skills = [
    'Flutter',
    'Dart',
    'Javascript',
    'Typescript',
    'Cross Platform Development',
    'Flutter Web',
    'iOS Development',
    'Android Development',
    'BloC Library',
    'BloC Pattern',
    'Firebase',
    'Cloud Firestore',
    'Google Material Design',
    'iOS Design',
    'Google Cloud Platform',
    'Firebase ML Kit',
    'Adobe XD',
    'Adobe Photoshop',
    'Stripe',
    'GitHub',
    'WordPress'
  ];
}
