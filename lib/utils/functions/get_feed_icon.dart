import 'package:miniflux_app/utils/constants/strings.dart';
import 'package:miniflux_app/utils/functions/get_main_url_from_url.dart';

String getFeedIconFromArticleURL(String articleURL) {
  const clearBitUrl = ConstStrings.clearBitUrl;
  final String defaultIcon = '$clearBitUrl/${getMainUrl(articleURL)}';
  return defaultIcon;
}
