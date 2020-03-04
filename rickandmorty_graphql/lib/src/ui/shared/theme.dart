import 'package:flutter/material.dart';

import 'package:rickandmorty_graphql/src/ui/shared/app_colors.dart';
import 'package:rickandmorty_graphql/src/ui/shared/text_styles.dart';

ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: MaterialColor(AppColors.orange[500].value, AppColors.orange),
  primaryColor: AppColors.orange[500],
  primaryColorBrightness: Brightness.light,
  accentColor: AppColors.orange[500],
  accentColorBrightness: Brightness.light,
  textTheme: textTheme,
);

ThemeData themeDarkData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.orange[500],
  primaryColorBrightness: Brightness.dark,
  accentColor: AppColors.orange[500],
  accentColorBrightness: Brightness.dark,
  textTheme: textTheme,
);
