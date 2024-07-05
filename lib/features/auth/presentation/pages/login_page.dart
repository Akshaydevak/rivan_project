import 'package:flutter/material.dart';
import 'package:rivan/core/theme/app_pellete.dart';
import 'package:rivan/features/auth/presentation/pages/sign_up.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_field.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_gradiant_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final formKey=GlobalKey<FormState>();

TextEditingController emmailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
@override
  void dispose() {
   emmailController.dispose();
   passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key:formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In .",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
             
              const SizedBox(
                height: 10,
              ),
               AuthField(
                hintText: 'Email',controller: emmailController,
              ),
              const SizedBox(
                height: 10,
              ),
               AuthField(ispasswordtext:true,
                hintText: 'Password',controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(buttontext: "Sign in",),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, SignupPage.route());
                },
                child: RichText(
                  text: TextSpan(
                      text: "Don't have an aoount? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                            text: "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: AppPallete.gradient2))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
