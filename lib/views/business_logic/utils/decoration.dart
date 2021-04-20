import 'package:flutter/material.dart';

BoxDecoration customDecoration(BuildContext context, { BorderRadius borderRadius = const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)) }) => BoxDecoration(
      color: Theme.of(context).cardColor,
      // borderRadius: flatBottom ? BorderRadius.vertical( top: Radius.circular(15.0) ) : BorderRadius.circular(15.0),
      // borderRadius: flatBottom ? BorderRadius.horizontal( right: Radius.circular(15.0) ) : BorderRadius.circular(15.0),
      borderRadius: borderRadius,
      boxShadow: [
        BoxShadow(
            // color: Colors.black12,
            color: Colors.blue.shade900.withOpacity(0.2),
            offset: Offset(0.5, 0.5),
            blurRadius: 4.0)
      ],
    );
