

import 'package:project_portfolio/views/business_logic/utils/toast.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openLink (String? _url) async {
  if (await canLaunch(_url ?? '')) {
    await launch(_url ?? '');
  } else {
    showToast('Failed to open link, please try again.');
  }
}