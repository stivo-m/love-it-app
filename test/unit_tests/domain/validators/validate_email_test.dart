import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/validators/validate_email.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('ValidateEmail', () {
    test('should return left for invalid email', () {
      final String invalidEmail = 'test123';
      Either<ValueFailure<String>, String> result =
          validateEmailAddress(invalidEmail);

      expect(result.isLeft(), true);
    });

    test('should return right for valid email', () {
      Either<ValueFailure<String>, String> result =
          validateEmailAddress(testEmail);

      expect(result.isRight(), true);
    });
  });
}
