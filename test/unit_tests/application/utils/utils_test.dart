import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/application/utils/utils.dart';
import 'package:love_it_app/domain/objects/strings.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('Utils', () {
    test('should return null when email is valid', () {
      final String? result = validateFormEmail(testEmail);
      expect(result, null);
    });

    test('should return email address invalid error when email is not valid',
        () {
      final String? result = validateFormEmail(emailText);
      expect(result, invalidEmailErrorText);
    });
  });
}
