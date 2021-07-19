import 'package:dartz/dartz.dart';
import 'package:ddd_firebase/domain/auth/auth_failure.dart';
import 'package:ddd_firebase/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<Either<AuthFailure,Unit>> signInWithGoogle();
}
