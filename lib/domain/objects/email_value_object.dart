import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/validators/validate_email.dart';

class EmailAddress {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress.withValue({required String input}) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  Map<String, dynamic> toMap() {
    return {
      'email': value.getOrElse(() => '').toString(),
    };
  }

  factory EmailAddress.fromMap(Map<String, dynamic> map) {
    return EmailAddress.withValue(
      input: map['email'],
    );
  }

  String toJson() => json.encode(toMap());
  String? get val => value.getOrElse(() => '');

  factory EmailAddress.fromJson(String source) =>
      EmailAddress.fromMap(json.decode(source));
}
