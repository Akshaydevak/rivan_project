import 'package:flutter/material.dart';
import 'package:rivan/core/theme/app_pellete.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttontext;
  const AuthGradientButton({super.key,required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomLeft,
          end: Alignment.topRight,
              colors: [AppPallete.gradient1, AppPallete.gradient2])),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 50),shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent),
        child:  Text(
          buttontext,
          style:const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ),
    );
  }
}
