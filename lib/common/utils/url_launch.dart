import 'package:url_launcher/url_launcher.dart';
import 'package:uwords/common/exceptions/url_exceptions.dart';

Future<void> launchUrlFunction({required Uri url}) async {
  if (!await launchUrl(url)) {
    throw CanNotOpenUrlException(message: "Can not open url: $url");
  }
}
