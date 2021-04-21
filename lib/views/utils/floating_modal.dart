import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FloatingModal extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;

  const FloatingModal({Key? key, @required this.child, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            color: backgroundColor,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(15.0),
            child: child,
          ),
        ),
      ),
    );
  }
}

Future<T?> showFloatingModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  // Color? backgroundColor,
}) =>
    showCustomModalBottomSheet<T>(
        context: context,
        builder: builder,
        containerWidget: (_, animation, child) => FloatingModal(
              child: child,
            ),
        expand: false);
