import 'package:fpdart/fpdart.dart';
import 'package:rivan/core/errors/failiures.dart';

abstract interface class AuthReposiotry{
Future<  Either<Failure,String>> signUpWithEmailnamePassword({required String name,required String email, required String password});
Future<  Either<Failure,String>> loginWithEmailPassword({required String email, required String password});

}