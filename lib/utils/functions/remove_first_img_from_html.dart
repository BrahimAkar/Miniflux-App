String removeSecondImage(String html) {
  // Define a regular expression pattern to extract the second image tag
  RegExp pattern =
      RegExp("src=(?:\"|')([^\"']+)(?:\"|')", caseSensitive: false);

  // Try to match the pattern to the HTML string
  Match? match = pattern.firstMatch(html);

  // If a match is found, remove the second image tag from the HTML string
  if (match != null) {
    return html.replaceFirst(match.group(1)!, "");
  }

  // If no match is found, return the original HTML string
  return html;
}
