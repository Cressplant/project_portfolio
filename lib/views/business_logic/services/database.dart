class Database {
  Map<String, dynamic> getData({required String collection}) {
    Map<String, dynamic> _requestedData = _allData[collection];

    return _requestedData;
  }

  final Map<String, dynamic> _allData = {
    'projects': {
      '0': {
        'title': 'Tree Worker',
        'logo': 'assets/images/tree_worker_logo.png',
        'coverImage': 'assets/images/tree_worker_cover.jpg',
        'coverBackgroundColor': 0xff5b876c,
        'screenshots': [
          'assets/images/treeworker_home.png',
          'assets/images/treeworker_home_darkmode.png',
          'assets/images/treeworker_home_tablet.png',
          'assets/images/treeworker_home_desktop.png'
        ],
        'summary':
            '''Invoicing & team management software that has been designed exclusively for arborists and arboricultural companies.\n\nTree Worker stands apart from other invoicing & management software as it also generates all the necessary documentation that arboricultural companies need, including Tree Protection Orders, Risk Assessments & Method Statements.''',
        'description':
            '''As my first real software project, and quite a big one as it turned out, the project structure, data structure and UI design changed drastically during its development. Working on it alone demanded that I gain experience within all aspects of planning, developing & launching an app with Flutter.\n\nThe project uses Firebase (Auth, Cloud Firestore & ML Kits), Stripe and the Bloc Pattern.''',
        'tags': ['000', '002', '003', '005', '007', '008', '009', '013', '014', '015', '017', '019', '020', '021'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xff5b876c,
        'repositoryLink': null,
        'playStoreLink': 'https://play.google.com/store/apps/details?id=com.treeworker.app',
        'appStoreLink': 'https://apps.apple.com/gb/app/id1536399943',
        'webLink': 'https://dashboard.treeworker.app/#/root',
      },
      '1': {
        'title': 'Tree Worker Landing Page',
        'logo': 'assets/images/tree_worker_logo.png',
        'coverImage': 'assets/images/tree_worker_landing_page.JPG',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': ['assets/images/tree_worker_landing_page.JPG', 'assets/images/tree_worker_landing_page_old_man.JPG'],
        'summary': 'A Flutter web project serving as the landing page for the Tree Worker app.',
        'description':
            '''Flutter web isn't the best suited framework for a landing page, when displaying a conventionally styled web page with lots of content its performance can be poor, even when using the HTML renderer, and its not optimal for SEO. The reason I chose to use Flutter Web was because I wanted more experience with Flutter on the web as a platform. That said, I have seen Flutter web improve considerably since I picked up the framework, so I hope performance will continue to improve quickly.''',
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
        'logo': 'assets/images/sun_bear_blinds_logo.png',
        'coverImage': 'assets/images/sun_bear_blinds_cover.jpg',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': [
          'assets/images/sun_bear_blinds_home.JPG',
          'assets/images/sun_bear_blinds_home_dark.JPG'
        ], // TODO: assets/images/sun_bear_blinds_darkmode_switch.gif error when committing, try another format
        'summary': 'An eCommerce web app, designed for the retail of Children\'s Blackout Blinds.',
        'description':
            '''I created this project as I wanted to gain more experience working with null safety. Although I was concerned it might slow my workflow, null safety has grown on me - but package incompatibility is still a limitation.\n\nAnother purpose for the project was to trial a light/dark mode open-licence flare animation I'd found, which you can see in the top right corner of the screenshots. It has been integrated with the project's theme, and the theme's state is handled using the Provider package.''',
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
        'logo': 'assets/images/snaggle_logo.png',
        'coverImage': 'assets/images/snaggle_cover.png',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': ['assets/images/snaggle_cover.png'],
        'summary': 'A social guidebook app, helping users to locate and interact with nearby events.',
        'description':
            '''This is a project that I've been involved with from afar, and I've taken a more of a consulting role on, advising aspects of the design, data modelling & structure.''',
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
        'logo': 'assets/images/profile_picture.png',
        'coverImage': 'assets/images/project_portfolio_cover.JPG',
        'coverBackgroundColor': 0xFFFFFFFF,
        'screenshots': [],
        'summary': 'Perhaps one of the best Flutter portfolios you\'ve seen... today?',
        'description': '''As the framework I'm strongest with it made sense to make my portfolio with Flutter.''',
        'tags': ['000', '002', '005', '006', '009', '010', '015'],
        'primaryColor': 0xff2196F3,
        'accentColor': 0xffffffff,
        'repositoryLink': 'https://github.com/Cressplant/project_portfolio',
        'playStoreLink': null,
        'appStoreLink': null,
        'webLink': null,
      },
    },
  };
}
