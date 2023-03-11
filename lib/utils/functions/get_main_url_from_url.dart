String getMainUrl(String url) {
  var uri = Uri.parse(url);
  var scheme = uri.scheme;
  var host = uri.host;
  var port = uri.port;
  var mainUrl = '$scheme://$host';
  if (port != 80 && port != 443 && port != -1) {
    mainUrl += ':$port';
  }
  return mainUrl;
}
