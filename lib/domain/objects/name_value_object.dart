import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/validators/validate_name.dart';

class Name {
  final Either<ValueFailure<String>, String> value;

  factory Name.withValue({required String input}) {
    return Name._(
      validateName(input),
    );
  }

  const Name._(this.value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': value.getOrElse(() => '').toString()};
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name.withValue(input: map['name'] as String);
  }

  String toJson() => json.encode(toMap());
  String? get val => value.getOrElse(() => '');

  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);
}
