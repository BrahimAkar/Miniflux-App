String getMainUrl(String url) {
  var uri = Uri.parse(url);
  var scheme = uri.scheme;
  var host = uri.host;
  var port = uri.port;
  var mainUrl = '$scheme://$host';

  return mainUrl;
}
