
import 'package:fpdart/fpdart.dart';
import 'package:rivan/core/errors/exceptions.dart';
import 'package:rivan/core/errors/failiures.dart';
import 'package:rivan/features/auth/data/auth_remote_data_source.dart';
import 'package:rivan/features/auth/domain/repostitory/auth_repository.dart';

class AuthReposiotryImpl implements AuthReposiotry {
  final AuthRemoteDataSource remoteDataSource;
  AuthReposiotryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailnamePassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
    final dataResponse=await  remoteDataSource.signUpWithEmailnamePassword(name: name, email: email, password: password);
    return right(dataResponse);

    }  on ServerException catch(e){
      return left(Failure(e.message));


    }
  }
}
