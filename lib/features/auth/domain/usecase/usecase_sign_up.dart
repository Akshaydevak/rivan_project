import 'package:fpdart/src/either.dart';
import 'package:rivan/core/errors/failiures.dart';
import 'package:rivan/core/use_cases/use_case.dart';
import 'package:rivan/features/auth/domain/repostitory/auth_repository.dart';

class UseCaseSignUp implements UseCase<String,UserSignUpParams>{
  final  AuthReposiotry reposiotry;
  UseCaseSignUp({required this.reposiotry});

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async{
      print("blocggg${params.email}");
   return await reposiotry.signUpWithEmailnamePassword(name: params.name, email: params.email, password: params.password);
      }
}


class UserSignUpParams{
  final String name;
  final String email;
  final  String password;
  UserSignUpParams(  {required this.name,required this.email,required this.password,});

}