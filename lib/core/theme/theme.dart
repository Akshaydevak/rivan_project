import 'package:flutter/material.dart';
import 'package:rivan/core/theme/app_pellete.dart';

class AppTheme{
  static  _border([Color color=AppPallete.borderColor])=>OutlineInputBorder(borderSide: BorderSide(color:color,width: 3),borderRadius: BorderRadius.circular(10));
  static final darkThememode=ThemeData.dark().copyWith(scaffoldBackgroundColor: AppPallete.backgroundColor,
  inputDecorationTheme:InputDecorationTheme(contentPadding: EdgeInsets.all(27),
    enabledBorder:_border(),focusedBorder: _border(AppPallete.gradient2),
  ));
}