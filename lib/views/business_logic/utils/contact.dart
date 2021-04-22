import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhone() async {
  String _url = 'tel:${Globals.phone}';
  if (await canLaunch(_url)) {
    await launch(_url);
  }
}

Future<void> launchEmail() async {
  String _url = 'mailto:${Globals.email}';
  if (await canLaunch(_url)) {
    await launch(_url);
  }
}

Future<void> launchLinkedIn() async {
  if (await canLaunch(Globals.linkedIn)) {
    await launch(Globals.linkedIn);
  }
}
