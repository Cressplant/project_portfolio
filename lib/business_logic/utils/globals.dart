import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/models/job.dart';
import 'package:project_portfolio/business_logic/utils/tags.dart';

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
  • Integrating REST APIs, Payment Gateways & Firebase.
  • Focus on clean project architecture & comprehensive testing.
  • Background in business ensuring: 
      - I understand the value of time
      - I'm providing real business value
      - I avoid unprofitable development decisions
  ''';

  static const String about =
      '''I completed The App Brewery's Flutter Development Bootcamp in 2019, previously having worked primarily with JavaScript. I enjoyed the course, but the main source of my personal development with Flutter came from practical, project based learning, which is the way I learn best. I grew passionate about working with Dart & Flutter, and have closely followed its rapid development as a framework. I combined this passion with the business acumen I had accumulated during my business degree and started my first solo commercial Flutter project - Tree Worker (an adaptation of the Arboriculture Industry's alias, 'Tree Work').\n\nI have a degree in Business Studies, graduating with a 2:1 in 2019. My background in business has since proven to be a huge asset, helping me consider the business value I'm adding as a programmer, and it often advises me away from development decisions that wouldn't be profitable to pursue.\n\nI started Tree Worker because I had some experience working with tree surgeons and I could see there was a gap in the market. I also knew that as the first commercial project that I was working on alone, I wasn't realistically going to be able to compete within a saturated market. The scope of the project was still considerable, and working on it alone demanded that I gain experience within all aspects of planning, developing and launching a Flutter application, on iOS, Android & web.\n\nI launched Tree Worker early this year and it's been growing steadily through incremening-ly more efficient, long term ads, I've released a series of updates to combat launch bugs & feedback, and it no longer requires my management. The pressure of the project's timescale, combined with its scope, has refined me into a very capable Flutter Developer. I've gained experience with a catalogue of REST APIs, the BLoC Library and Firebase, and it has taught me the importance of clean project architecture and comprehensive testing.\n\nI'm now looking for a developer role. Although I'd love to continue working with Flutter and following its evolution as a framework, I'm also always open to working with other frameworks - and learning always excites me.
    ''';

  static final List<Job> jobList = [
    Job(
        company: 'Tree Worker Software LTD',
        logo: 'assets/images/tree_worker_logo.png',
        role: 'Flutter Developer & Director',
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
    'BLoC Pattern',
    'Provider',
    'Freezed',
    'Firebase',
    'Google Material Design',
    'iOS Design',
    'Google Cloud Platform',
    'Google Maps',
    'MapBox',
    'Adobe XD',
    'Adobe Photoshop',
    'Stripe',
    'Git',
    'VSCode',
    'Android Studio'
  ];
}
