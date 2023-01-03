import 'package:url_launcher/url_launcher_string.dart';

void openUrl(String? url) async {
  if (url == null) return;

  if (await canLaunchUrlString(url)) {
    await launchUrlString(
      url,
    );
  } else {
    throw 'このURLにはアクセスできません';
  }
}
