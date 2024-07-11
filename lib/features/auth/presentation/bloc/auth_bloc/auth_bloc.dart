

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rivan/features/auth/domain/usecase/usecase_sign_up.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UseCaseSignUp _useCaseSignUp;
  AuthBloc({required UseCaseSignUp useCaseSignUp }) :_useCaseSignUp=useCaseSignUp, super(AuthInitial()) {
  on<AuthSignUp>((event, emit)async {
    print("bloc${event.email}");
  final response= await _useCaseSignUp(UserSignUpParams(name: event.name, email:event. email, password: event.password));
  response.fold((l) => AuthFailure(l.message), (r) => AuthSuccess(r));
  });
  
  }
}
