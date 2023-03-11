import 'package:flutter_test/flutter_test.dart';
import 'package:miniflux_app/utils/functions/get_img_from_html.dart';

void main() {
  test('extracts URL of first image in HTML string', () {
    String html = '''
      <html>
        <body>
          <img src="https://example.com/image.jpg">
          <p>Some text.</p>
          <img src="https://example.com/another-image.jpg">
        </body>
      </html>
    ''';

    String imageUrl = extractImageUrl(html);

    expect(imageUrl, equals('https://example.com/image.jpg'));
  });

  test('returns default image URL if no images in HTML string', () {
    String html = '''
      <html>
        <body>
          <p>Some text.</p>
        </body>
      </html>
    ''';

    String imageUrl = extractImageUrl(html);

    expect(
      imageUrl,
      equals('https://example.com/default-image.jpg'),
    );
  });
}
