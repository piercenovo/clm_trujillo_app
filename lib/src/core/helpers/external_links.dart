import 'package:url_launcher/url_launcher.dart';

class LinkUtils {
  LinkUtils._();

  static Future<void> openApp(String url) async {
    if (await canLaunch(url)) {
      await canLaunch(
        url,
      );
    } else {
      await launch(
        url,
      );
    }
  }

  static Future<void> openCall(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    }
  }

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://google.com/maps/search?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await canLaunch(googleUrl);
    } else {
      await launch(googleUrl);
    }
  }
}
