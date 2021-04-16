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
        'screenshots': ['images/treeworker_mobile_darkmode.png'],
        'description': 'Invoicing & team management software for Arboricultral Companies.',
        'tags': ['011', '003', '001', '004', '006', '008'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xff5b876c
      },
      '1': {
        'title': 'Tree Worker Landing Page',
        'logo':
            'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/Store%20Upload%20Icon%20512.png?alt=media&token=521c81e7-3e7d-4bba-9fe4-67375ebf4ccb',
        'coverImage': 'images/tree_worker_landing_page.JPG', //! CONVERT TO NETWORK IMAGE
        'screenshots': ['images/treeworker_mobile_darkmode.png'],
        'description': 'Flutter web project serving as the landing page for the Tree Worker app.',
        'tags': ['011', '001', '008'],
        'primaryColor': 0xffff8c6a,
        'accentColor': 0xffffffff
      },
    }
  };
}
