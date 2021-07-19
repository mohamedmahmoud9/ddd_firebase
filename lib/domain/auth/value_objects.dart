import 'package:dartz/dartz.dart';
import 'package:ddd_firebase/domain/core/failures.dart';
import 'package:ddd_firebase/domain/core/value_objects.dart';
import 'package:ddd_firebase/domain/core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value) : assert(value != null);
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value) : assert(value != null);
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
}
