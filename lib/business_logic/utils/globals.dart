import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/models/job.dart';
import 'package:project_portfolio/business_logic/utils/tags.dart';

class Globals {
  static const String title = 'Project Portfolio';

  static const double maxPageWidth = 800.0;

  static const String phone = '+447592961917';
  static const String email = 'o.f.f.newman@gmail.com';
  static const String linkedIn = 'https://www.linkedin.com/in/oscar-newman-21b84312a/';
  static const String portfolio = 'www.oscarnewman.uk';

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
    '014': Tag(id: '014', title: 'BLoC', color: Colors.blue.shade400),
    '015': Tag(id: '015', title: 'Provider', color: Colors.lightBlue),
    '016': Tag(id: '016', title: 'ML', color: Colors.grey),
    '017': Tag(id: '017', title: 'Freezed', color: Colors.white),
    '018': Tag(id: '018', title: 'WIP', color: Colors.redAccent),
    '019': Tag(id: '019', title: 'Private', color: Colors.blue.shade900, iconData: Icons.lock),
    '020': Tag(id: '020', title: 'Cloud Firestore', color: Colors.yellow),
    '021': Tag(id: '021', title: 'Stripe', color: Colors.red),
  };

  static const String summary = '''
  Creative and passionate Flutter Developer.

  • Nearing two years commercial experience developing cross-platform apps with Flutter.
  • Integrating REST APIs and Cloud Services (e.g. Firebase).
  • Focus on clean project architecture & comprehensive testing.
  • Confident with a variety of state management solutions (e.g. Provider, BLoC).
  • Background in business & within start-ups, ensuring:
      - I make sure I'm providing real business value
      - I avoid unprofitable development micro-decisions
  ''';

  static const String about =
      '''I completed the The App Brewery's Flutter Development Bootcamp 2019 and have been working with Flutter effectively full-time since, closely following its rapid development as a framework. I'm passionate about working with Dart & Flutter, and am proactive in improving as a developer and adapting to the fast pace of change in the industry.\n\nI have a degree in business, which I chose as it's a broad subject, and at the time I hadn't yet found my 'calling'. Business introduced me to many potential career paths, all of which I didn't feel suited to until I started working with software.\n\nMy background in business and the acumen that I've accumulated enables me to understand the real value I'm adding as a developer, ensuring I'm valuable and efficient, and it often advises me away from development decisions that wouldn't be profitable to pursue.\n\nI have experience within all aspects of planning, developing and launching large scale projects with Flutter. I launched Tree Worker in January 2021, it provides quotation, invoicing and team management services to Arborists and Arboriculture Companies. The scope of the project was considerable and I developed it entirely alone, creating an incredibly valuable learning experience through necessity. Tree Worker is available on iOS, Android and web, it uses the BLoC library, Firebase (Auth, Cloud Firestore, ML Kit), Stripe, Google Maps and a catalogue of other REST APIs. I tend to be methodical and organised anyway, but working on a project of its scale has reinforced for me the importance of clean project architecture and comprehensive testing.\n\nI'd love to continue working with Flutter and following its evolution as a framework, but I'm also always open to working with other frameworks - and learning excites me.''';

  static final List<Job> jobList = [
    Job(
      id: '1',
        company: 'Tree Worker Software LTD',
        logo: 'assets/images/tree_worker_logo.png',
        role: 'Flutter Developer & Director',
        contract: '',
        description: '''I launched Tree Worker in January 2021, it provides quotation, invoicing and team management services to Arborists and Arboriculture Companies. The scope of the project was considerable and I developed it entirely alone, creating an incredibly valuable learning experience through necessity. Tree Worker is available on iOS, Android and web, it uses the BLoC library, Firebase (Auth, Cloud Firestore, ML Kit), Stripe, Google Maps and a catalogue of other REST APIs. I tend to be methodical and organised anyway, but working on a project of its scale has reinforced for me the importance of clean project architecture and comprehensive testing.''',
        start: DateTime(2019, 10),
        end: DateTime.now(),
        currentlyWorkingHere: true),
    Job(
        id: '2',
        company: 'WEA',
        logo: 'assets/images/wea_logo.png',
        role: 'Marketing Coordinator',
        contract: 'Part Time',
        description: '''As Tree Worker was a big project I worked part-time to sustain myself during its development. Working in Digital Marketing was ideal as it utilised skills I had already gained during my degree & first business. My responsibilities include managing the WEA South West social media pages, but I also volunteered my web development experience to redesign the WEA South West's landing page.''',
        start: DateTime(2020, 3),
        end: DateTime.now(),
        currentlyWorkingHere: true),
    Job(
        id: '3',
        company: 'Share with a Bear LTD',
        logo: 'assets/images/share_with_a_bear_logo.png',
        role: 'Director',
        contract: '',
        description: '''In 2016 I started a children’s blackout blind business which I ran alongside my university studies. As I was responsible for all four functional areas of the business I was forced to develop a diverse range of skills. This has been both a blessing and a curse, it has made me very adaptable but has restricted me from focusing on the areas that I am passionate about - namely web & app design. Designing, maintaining and polishing the business' digital presence was the most enjoyable aspect of running the business. The business now generates a small passive income and operates without me.''',
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
    'BLoC Pattern',
    'Provider',
    'Freezed',
    'Firebase',
    'Google Material Design',
    'iOS Design',
    'Google Cloud Platform',
    'Google Maps',
    'Leaflet',
    'MapBox',
    'Adobe XD',
    'Adobe Photoshop',
    'Stripe',
    'Git',
    'VSCode',
    'Android Studio'
  ];
}
