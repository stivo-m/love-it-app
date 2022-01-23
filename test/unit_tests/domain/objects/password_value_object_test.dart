import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('Password', () {
    test('should convert value to json', () {
      final Password password = Password.withValue(input: testFirstName);

      final Map<String, dynamic> _json = password.toMap();

      expect(_json['password'], password.val);
    });

    test('should convert from to json', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'password': testFirstName,
      };

      final Password password = Password.fromMap(_json);

      expect(_json['password'], password.val);
    });

    test('should convert json to string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'password': testFirstName,
      };

      final Password password = Password.fromMap(_json);

      expect(_json['password'], password.val);
      expect(json.encode(_json), password.toJson());
    });
  });
}
