import 'package:url_launcher/url_launcher.dart';

class Urllaunch {
  static launchUrll(String url) async {
    launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
