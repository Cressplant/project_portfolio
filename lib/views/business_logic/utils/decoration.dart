import 'package:flutter/material.dart';

BoxDecoration defaultDecoration(BuildContext context) => BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
            // color: Colors.black12,
            color: Colors.blue.shade900.withOpacity(0.2),
            offset: Offset(0.5, 0.5),
            blurRadius: 4.0)
      ],
    );
