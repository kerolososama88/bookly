import 'package:bookly/Core/utils/function/custom_snck_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomer(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    customSnackBar(
      context,
      'cannot launch url $url',
    );
  }
}
