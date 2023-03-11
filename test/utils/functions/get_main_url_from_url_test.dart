import 'package:flutter_test/flutter_test.dart';
import 'package:miniflux_app/utils/functions/get_main_url_from_url.dart';

void main() {
  test('getMainUrl returns the main URL', () {
    expect(getMainUrl('https://www.example.com/path/to/page.html'),
        'https://www.example.com');
    expect(getMainUrl('http://localhost:8080'), 'http://localhost:8080');
    expect(getMainUrl('ftp://ftp.example.com'), 'ftp://ftp.example.com');
    expect(getMainUrl('https://www.example.com:8443/path/to/page.html'),
        'https://www.example.com:8443');
    expect(getMainUrl('http://localhost'), 'http://localhost');
  });
}
