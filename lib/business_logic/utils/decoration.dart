import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration(BuildContext context, { BorderRadius borderRadius = const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)) }) => BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: borderRadius,
      boxShadow: [
        BoxShadow(
            color: Colors.blue.shade900.withOpacity(0.2),
            offset: Offset(0.5, 0.5),
            blurRadius: 4.0)
      ],
    );
