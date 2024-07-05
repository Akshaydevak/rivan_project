import 'package:flutter/material.dart';
import 'package:rivan/core/secrets/app_secrets.dart';
import 'package:rivan/core/theme/theme.dart';
import 'package:rivan/features/auth/presentation/pages/login_page.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
 final appSupaBase=await Supabase.initialize(anonKey:AppSecrets.supabseAnonKey ,url: AppSecrets.supabaseurl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rivan',
      theme: AppTheme.darkThememode,
      home: const LoginPage(),
    );
  }
}


