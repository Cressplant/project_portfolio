class Database {
  Map<String, dynamic> getData({required String collection}) {
    Map<String, dynamic> _requestedData = _allData[collection];

    return _requestedData;
  }

  final Map<String, dynamic> _allData = {
    'projects': {
      '0': {
        'title': 'Tree Worker',
        'logo': 'images/tree_worker_logo.png',
        'coverImage': 'images/tree_worker_cover.jpg',
        'coverBackgroundColor': 0xff5b876c,
        'screenshots': ['images/treeworker_home_darkmode.png', 'images/treeworker_home_darkmode_tablet.png', 'images/treeworker_home_darkmode_laptop.png'],
        'summary': 'Tree Worker is invoicing & team management software that has been designed exclusively for arborists and arboricultral companies.',
        'description': '''Tree Worker stands apart from other invoicing & management software as it also generates all the necessary documentation that arboricultral companies need, including Tree Protection Orders, Risk Assessments & Method Statements.\n\nAs my first real software project, and quite a big one as it turned out, the project structure, data structure, UI, and overall scope changed drastically during its development. It was a huge learning experience, and I've become a much, much better and more rounded programmer than I was at the project\'s inception.''',
        'tags': ['000', '002', '003', '005', '007', '008', '009', '013', '014', '015', '017', '019'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xff5b876c,
        'repositoryLink': null,
        'playStoreLink': 'https://play.google.com/store/apps/details?id=com.treeworker.app',
        'appStoreLink': 'https://apps.apple.com/gb/app/id1536399943',
        'webLink': 'https://dashboard.treeworker.app/#/root',
      },
      '1': {
        'title': 'Tree Worker Landing Page',
        'logo': 'images/tree_worker_logo.png',
        'coverImage': 'images/tree_worker_landing_page.JPG',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': ['images/tree_worker_landing_page.JPG'],
        'summary': 'A Flutter web project serving as the landing page for the Tree Worker app.',
        'description':
            '''I'm under no illusion that Flutter web is the best suited framework for a landing page, its general performance can be poor on Mobile, even when using the HTML renderer, and its not optimal for SEO.\n\nThe main reason I chose to use Flutter Web was because I wanted more experience with Flutter on the web as a platform. I have seen Flutter web improve considerably since I picked up the framework, so I hope performance will continue to improve quickly.''',
        'tags': ['000', '002', '003', '005', '009', '015', '019'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xff5b876c,
        'repositoryLink': null,
        'playStoreLink': null,
        'appStoreLink': null,
        'webLink': 'https://treeworker.app/#/landing',
      },
      '2': {
        'title': 'Sun Bear Blinds',
        'logo': 'images/sun_bear_blinds_logo.png',
        'coverImage': 'images/sun_bear_blinds_cover.jpg',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': ['images/sun_bear_blinds_home.JPG', 'images/sun_bear_blinds_home_dark.JPG'],
        'summary': 'An eCommerce web app, designed for the retail of Children\'s Blackout Blinds.',
        'description':
            '''I created this project as I wanted to gain more experience working with null safety. Although I was concerned it might slow my workflow, null safety has grown on me - but package incompatibility is still a limitation.''',
        'tags': ['000', '002', '003', '004', '006', '009', '010', '015', '018'],
        'primaryColor': 0xffC7D7E5,
        'accentColor': 0xffFFF3A6,
        'repositoryLink': 'https://github.com/Cressplant/sun_bear_blinds',
        'playStoreLink': null,
        'appStoreLink': null,
        'webLink': null,
      },
      '3': {
        'title': 'Snaggle',
        'logo': 'images/snaggle_logo.png',
        'coverImage': 'images/snaggle_cover.png',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': ['images/snaggle_cover.png'],
        'summary': 'A social guidebook app, helping users to locate and interact with nearby events.',
        'description': '''This is a project that I've been involved with from afar, and I've taken a more of a consulting role on.''',
        'tags': ['001', '002', '003', '007', '008', '013', '014', '015', '018', '019'],
        'primaryColor': 0xff114B5F,
        'accentColor': 0xffffffff,
        'repositoryLink': null,
        'playStoreLink': null,
        'appStoreLink': null,
        'webLink': null,
      },
      '4': {
        'title': 'This Project',
        'logo': 'images/profile_picture.png',
        'coverImage': 'images/project_portfolio_cover.png',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': [],
        'summary': 'The portfolio of an incredibly talented developer...',
        'description': '',
        'tags': ['000', '002', '005', '006', '009', '010', '015'],
        'primaryColor': 0xff2196F3,
        'accentColor': 0xffffffff,
        'repositoryLink': 'https://github.com/Cressplant/project_portfolio',
        'playStoreLink': null,
        'appStoreLink': null,
        'webLink': null,
      },
    },
    'jobs': {
      '0': {
        'company': 'Tree Worker Software LTD',
        'logo': 'images/tree_worker_logo.png',
        'role': 'Director',
        'contract': '',
        'description': '', //!
        'start': DateTime(2019, 11).millisecondsSinceEpoch,
        'end': DateTime.now().millisecondsSinceEpoch,
        'currentlyWorkingHere': true
      },
      '1': {
        'company': 'WEA',
        'logo': 'images/wea_logo.png',
        'role': 'Marketing Coordinator',
        'contract': 'Part Time',
        'description': '', //!
        'start': DateTime(2020, 3).millisecondsSinceEpoch,
        'end': DateTime.now().millisecondsSinceEpoch,
        'currentlyWorkingHere': true
      },
      '2': {
        'company': 'Share with a Bear LTD',
        'logo': 'images/share_with_a_bear_logo.png',
        'role': 'Director',
        'contract': '',
        'description': '', //!
        'start': DateTime(2016, 10).millisecondsSinceEpoch,
        'end': DateTime(2019, 12).millisecondsSinceEpoch,
        'currentlyWorkingHere': false
      }
    }
  };
}
