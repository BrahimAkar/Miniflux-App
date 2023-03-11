import 'package:miniflux_app/utils/constants/strings.dart';

String extractImageUrl(String html) {
  // Define a regular expression pattern to extract the first image URL
  RegExp pattern =
      RegExp("<img.*?src=['\"](.*?)['\"].*?>", caseSensitive: false);

  // Try to match the pattern to the HTML string
  Match? match = pattern.firstMatch(html);

  // If a match is found, return the URL of the first image
  if (match != null) {
    return match.group(1)!;
  }

  // If no match is found, return the URL of the default image
  return ConstStrings.defaultNetworkImage;
}
