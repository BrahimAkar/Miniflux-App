String removeSecondImage(String html) {
  var regex = RegExp(r'<img[^>]+>');
  var count = 0;
  return html.replaceAllMapped(regex, (match) {
    count++;
    if (count == 2) {
      return '';
    } else {
      return match.group(0) ?? '';
    }
  });
}
