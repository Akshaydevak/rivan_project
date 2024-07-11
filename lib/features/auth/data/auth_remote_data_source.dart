import 'package:rivan/core/errors/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
abstract interface class AuthRemoteDataSource{
Future<String>  signUpWithEmailnamePassword({required String name,required String email, required String password});

}
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  final  SupabaseClient supaBaseClient;
  AuthRemoteDataSourceImpl(this.supaBaseClient);
  @override
  Future<String> signUpWithEmailnamePassword({required String name, required String email, required String password}) async {
  
  try{
      print("blocssssssssssssssaaaaaa${supaBaseClient}");
      final response=await  Supabase.instance.client  .auth.signUp(password: password,email: email,data: {
      'name':name
    });
    print(response);
if(response.user?.id==null){
  throw const  ServerException("User  is null");
}
    return response.user?.id??"null";
  }catch(e){
    throw ServerException(e.toString());

  }
  }
  
}