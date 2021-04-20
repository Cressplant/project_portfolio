class DataBase {
  Map<String, dynamic> getData({required String collection}) {
    Map<String, dynamic> _requestedData = _allData[collection];

    return _requestedData;
  }

  final Map<String, dynamic> _allData = {
    'projects': {
      '0': {
        'title': 'Tree Worker',
        'logo':
            'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/Store%20Upload%20Icon%20512.png?alt=media&token=521c81e7-3e7d-4bba-9fe4-67375ebf4ccb',
        'coverImage': 'images/6 - Home Shortcuts FB AD.jpg', //! CONVERT TO NETWORK IMAGE
        'screenshots': ['images/treeworker_home_darkmode.png', 'images/treeworker_home_darkmode_tablet.png', 'images/treeworker_home_darkmode_laptop.png'],
        'description': 'Invoicing & team management software for Arboricultral Companies.',
        'tags': ['000', '002', '003', '004', '006', '008', '011'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xff5b876c
      },
      '1': {
        'title': 'Tree Worker Landing Page',
        'logo':
            'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/Store%20Upload%20Icon%20512.png?alt=media&token=521c81e7-3e7d-4bba-9fe4-67375ebf4ccb',
        'coverImage': 'images/tree_worker_landing_page.JPG', //! CONVERT TO NETWORK IMAGE
        'screenshots': ['images/tree_worker_landing_page.JPG'],
        'description': 'Flutter web project serving as the landing page for the Tree Worker app.',
        'tags': ['000', '002', '003', '008', '011'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xffffffff
      },
      '2': {
        'title': 'Sun Bear Blinds',
        'logo': 'https://www.sunbearblinds.com/wp-content/uploads/2019/08/Sun-Bear-Round-Logo-Edge-200px.png',
        'coverImage': 'images/sun_bear_blinds_cover.png', //! CONVERT TO NETWORK IMAGE
        'screenshots': ['images/sun_bear_blinds_home.JPG', 'images/sun_bear_blinds_home_dark.JPG'],
        'description': 'An eCommerce web app, retailing Children\'s Blackout Blinds.',
        'tags': ['000', '002', '011', '008'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xffffffff
      },
      '3': {
        'title': 'Snaggle',
        'logo': 'https://www.sunbearblinds.com/wp-content/uploads/2019/08/Sun-Bear-Round-Logo-Edge-200px.png',
        'coverImage': 'images/snaggle_cover.png', //! CONVERT TO NETWORK IMAGE
        'screenshots': ['images/snaggle_cover.png'],
        'description': 'An eCommerce web app, retailing Children\'s Blackout Blinds.',
        'tags': ['001', '002', '011', '008'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xffffffff
      },
      // '3': {
      //   'title': 'This Project Portfolio',
      //   'logo': 'https://www.sunbearblinds.com/wp-content/uploads/2019/08/Sun-Bear-Round-Logo-Edge-200px.png',
      //   'coverImage': 'images/sun_bear_blinds_home.JPG', //! CONVERT TO NETWORK IMAGE
      //   'screenshots': ['images\sun_bear_blinds_home.JPG'],
      //   'description': 'An eCommerce web app, retailing Children\'s Blackout Blinds.',
      //   'tags': ['011', '002', '001', '008'],
      //   'primaryColor': 0xffff8c6a,
      //   'accentColor': 0xffffffff
      // },
    }
  };
}
