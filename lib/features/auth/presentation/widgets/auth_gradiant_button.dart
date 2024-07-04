import 'package:flutter/material.dart';
import 'package:rivan/core/theme/app_pellete.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [AppPallete.gradient1, AppPallete.gradient2])),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 50),shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent),
        child: const Text(
          "Sign Up",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ),
    );
  }
}
