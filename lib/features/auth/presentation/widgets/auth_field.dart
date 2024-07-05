import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
final String hintText;
final TextEditingController controller;
final bool ispasswordtext;
  const AuthField({super.key, required this.hintText, required this.controller,this.ispasswordtext=false});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      obscureText: ispasswordtext,
      decoration: InputDecoration(hintText:hintText ),validator: (String? value){
      if(value!.isEmpty){
        return "$hintText is missing";
      }
      return null;
    

    },);
  }
}