import 'package:flutter/material.dart';
import 'package:rivan/core/theme/app_pellete.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_field.dart';
import 'package:rivan/features/auth/presentation/widgets/auth_gradiant_button.dart';

class SignupPage extends StatefulWidget {
  static route()=>MaterialPageRoute(builder: (context) =>const SignupPage(),);
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
final formKey=GlobalKey<FormState>();
TextEditingController nameController=TextEditingController();
TextEditingController emmailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
@override
  void dispose() {
    nameController.dispose();
    emmailController.dispose();
    passwordController.dispose();
        // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:const  EdgeInsets.all(15.0),
        child: Form(
          key:formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up .",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
               AuthField(
                hintText: 'Name',controller: nameController,
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
              const AuthGradientButton(buttontext: "Sign Up",),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Don\'t have an aoount? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                          text: "Sign in",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: AppPallete.gradient2))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
