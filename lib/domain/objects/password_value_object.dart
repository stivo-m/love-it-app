import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/validators/validate_name.dart';

class Password {
  final Either<ValueFailure<String>, String> value;

  factory Password.withValue({required String input}) {
    return Password._(
      validateName(input),
    );
  }

  const Password._(this.value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value.getOrElse(() => '').toString()};
  }

  factory Password.fromMap(Map<String, dynamic> map) {
    return Password.withValue(input: map['value'] as String);
  }

  String toJson() => json.encode(toMap());

  String? get val => value.getOrElse(() => '');

  factory Password.fromJson(String source) =>
      Password.fromMap(json.decode(source) as Map<String, dynamic>);
}
