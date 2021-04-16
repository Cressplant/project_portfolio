


import 'package:flutter/material.dart';

BoxDecoration defaultDecoration ( BuildContext context ) => BoxDecoration(
  color: Theme.of(context).cardColor,
  borderRadius: BorderRadius.circular(15.0),
  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4.0)],
);