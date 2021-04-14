import 'dart:convert';

class DataBase {

  Map<String, dynamic> getData({ required String collection }){

    Map<String, dynamic> _data = jsonDecode(_jsonObject);
    Map<String, dynamic> _requestedData = _data[collection];

    return _requestedData;

  }

  final String _jsonObject = """{
    'projects' : {
      '0' : {
        'title' : 'Tree Worker',
        'image' : 'https://firebasestorage.googleapis.com/v0/b/bluebranch-ad113.appspot.com/o/Store%20Upload%20Icon%20512.png?alt=media&token=521c81e7-3e7d-4bba-9fe4-67375ebf4ccb',
        'description' : 'Invoicing & team management software designed specifically for Arborists & Arboricultral Companies.',
        'tags' : ['001', '002']
      },

    }
  }""";

}