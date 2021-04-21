


import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';


  void showToast (String message) => Fluttertoast.showToast(
    backgroundColor: Colors.blue,
    textColor: Colors.white,
  msg: message,
  toastLength: Toast.LENGTH_SHORT,
  webBgColor: "#2196f3",
  timeInSecForIosWeb: 5,
  );
