import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:project_portfolio/business_logic/utils/toast.dart';
import 'package:project_portfolio/views/utils/custom_card.dart';

class CopyButton extends StatelessWidget {
  final String copyText;

  CopyButton({required this.copyText});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(new ClipboardData(text: copyText));
          showToast('Copied to Clipboard');
        },
        child: CustomCard(padding: const EdgeInsets.all(12.0), child: Icon(Icons.copy)),
      ),
    );
  }
}
