
import 'package:flutter/material.dart';

Color getContrastingColor (Color backgroundColor) {

// Color(int.parse('0xff${state.eventAreaFill.fillColor.substring(1)}')),

  return  useWhiteForeground(Color(int.parse(
                              '0x${state.eventAreaFill.fillColor.substring(1)}')))
                              
                          ? const Color(0xffffffff)
                          : const Color(0xff000000));

                      


}