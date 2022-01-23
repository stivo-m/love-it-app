import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('EmailAddress', () {
    test('should convert value to json', () {
      final EmailAddress email = EmailAddress.withValue(input: testEmail);

      final Map<String, dynamic> _json = email.toMap();

      expect(_json['email'], email.val);
    });

    test('should convert from to json', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'email': testEmail,
      };

      final EmailAddress email = EmailAddress.fromMap(_json);

      expect(_json['email'], email.val);
    });

    test('should convert json to string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'email': testEmail,
      };

      final EmailAddress email = EmailAddress.fromMap(_json);

      expect(_json['email'], email.val);
      expect(json.encode(_json), email.toJson());
    });
  });
}
