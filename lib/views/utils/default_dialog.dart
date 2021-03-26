import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DefaultDialog extends StatelessWidget {
  DefaultDialog({
    @required this.child,
    this.backgroundColor,
    this.showClose = true,
    this.padding = const EdgeInsets.all(15),
    this.constraints = const BoxConstraints(maxHeight: 420, maxWidth: 355),
  }) : assert(constraints != null);

  final Widget? child;
  final bool showClose;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(5),
      clipBehavior: Clip.hardEdge,
      backgroundColor: backgroundColor ?? Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          constraints: constraints,
          child: Stack(
            children: [
              Padding(
                padding: padding,
                child: child,
              ),
              if (showClose == true)
                Positioned(
                    top: 0,
                    right: 0,
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () => Navigator.maybePop(context), //* pop alone wont trigger 'onWillPop' funcs
                          child: Padding(padding: EdgeInsets.all(6), child: Icon(Icons.close, size: 20)),
                        )))
            ],
          ),
        ),
      ),
    );
  }
}
