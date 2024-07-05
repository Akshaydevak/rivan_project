abstract interface class AuthRemoteDataSource{
Future<String>  signUpWithEmailnamePassword({required String name,required String email, required String password});
}
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  @override
  Future<String> signUpWithEmailnamePassword({required String name, required String email, required String password}) {
    // TODO: implement signUpWithEmailnamePassword
    throw UnimplementedError();
  }
  
}