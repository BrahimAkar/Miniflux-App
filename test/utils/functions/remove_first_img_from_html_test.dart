import 'package:flutter_test/flutter_test.dart';
import 'package:miniflux_app/utils/functions/remove_first_img_from_html.dart';

void main() {
  group('removeSecondImage', () {
    test('removes second image from HTML string', () {
      const input =
          '<div><img src="foo.jpg"><p>Hello world</p><img src="bar.jpg"></div>';
      const expectedOutput = '<div><img src="foo.jpg"><p>Hello world</p></div>';

      expect(removeSecondImage(input), equals(expectedOutput));
    });

    test('handles input with less than 2 images', () {
      const input = '<div><img src="foo.jpg"><p>Hello world</p></div>';

      expect(removeSecondImage(input), equals(input));
    });

    test('handles empty input', () {
      const input = '';

      expect(removeSecondImage(input), equals(input));
    });
  });
}
