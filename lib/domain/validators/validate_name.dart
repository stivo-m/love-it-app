import 'package:dartz/dartz.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure<String>.invalidNameField(failedValue: input));
  } else {
    return right(input);
  }
}
