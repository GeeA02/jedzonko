import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData defaultTheme() {
  TextTheme _defaultTextTheme(TextTheme base) {
    return base.copyWith(
        headline1: base.headline1.copyWith(
          fontSize: 60.0,
          fontWeight: FontWeight.bold,
          color: CustomColors.FontColor,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: CustomColors.FontColor,
        ));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    canvasColor: CustomColors.BackgroundColor,
    textTheme: _defaultTextTheme(base.textTheme),
    scaffoldBackgroundColor: CustomColors.BackgroundColor,
    primaryColor: CustomColors.PrimaryColor,
    primaryColorDark: CustomColors.PrimaryDarkColor,
    primaryColorLight: CustomColors.PrimaryLightColor,
    secondaryHeaderColor: CustomColors.SecondaryColor,
    selectedRowColor: CustomColors.SearchbarColor,
    errorColor: CustomColors.ErrorColor,
    bottomAppBarColor: CustomColors.LightBackgroundColor,
    backgroundColor: CustomColors.BackgroundColor,
    cardColor: CustomColors.LightBackgroundColor,
  );
}
