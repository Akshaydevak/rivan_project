import 'package:flutter/material.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_field.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_gradiant_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up .",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            AuthField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            AuthField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            AuthField(
              hintText: 'Email',
            ),
            AuthGradientButton(),
          ],
        ),
      ),
    );
  }
}
