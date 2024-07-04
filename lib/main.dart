import 'package:flutter/material.dart';
import 'package:rivan/core/theme/theme.dart';
import 'package:rivan/features/auth/presentation/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThememode,
      home: const SignupPage(),
    );
  }
}


