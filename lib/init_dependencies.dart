import 'package:get_it/get_it.dart';
import 'package:rivan/core/secrets/app_secrets.dart';
import 'package:rivan/features/auth/data/auth_remote_data_source.dart';
import 'package:rivan/features/auth/data/auth_repositories.dart';
import 'package:rivan/features/auth/domain/repostitory/auth_repository.dart';
import 'package:rivan/features/auth/domain/usecase/usecase_sign_up.dart';
import 'package:rivan/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
final serviceLocator=GetIt.instance;

Future<void>initDependencies()async{
  
    final appSupaBase = await Supabase.initialize(
      anonKey: AppSecrets.supabseAnonKey, url: AppSecrets.supabaseurl);
      serviceLocator.registerLazySingleton(() => appSupaBase.client);
      init_auth();

}
// ignore: non_constant_identifier_names
void init_auth(){
  serviceLocator.registerFactory<AuthReposiotry>(() =>AuthReposiotryImpl(serviceLocator()) );
  serviceLocator.registerFactory<AuthRemoteDataSource>(() =>AuthRemoteDataSourceImpl(serviceLocator()) );
serviceLocator.registerFactory(() =>UseCaseSignUp(reposiotry:serviceLocator()) );
serviceLocator.registerFactory(() =>AuthBloc(useCaseSignUp:serviceLocator()) );
}