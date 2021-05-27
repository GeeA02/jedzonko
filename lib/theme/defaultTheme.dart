import 'package:flutter/material.dart';
import 'package:jedzonko/theme/colors.dart';

class DefaultTheme with ChangeNotifier {
  static ThemeData get darkTheme {
    return ThemeData(
      canvasColor: CustomColors.BackgroundColor,
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
      dialogBackgroundColor: CustomColors.LightBackgroundColor,
      fontFamily: 'Montserrat',
      textTheme: ThemeData.dark().textTheme.copyWith(
            headline1: ThemeData.dark().textTheme.headline1!.copyWith(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
            bodyText1: ThemeData.dark().textTheme.bodyText1!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.PrimaryColor,
      primaryColorDark: CustomColors.PrimaryDarkColor,
      primaryColorLight: CustomColors.PrimaryLightColor,
      secondaryHeaderColor: CustomColors.SecondaryColor,
      selectedRowColor: CustomColors.SearchbarColor,
      errorColor: CustomColors.ErrorColor,
      backgroundColor: CustomColors.HintColor,
      /*
      canvasColor: CustomColors.BackgroundColor,
      scaffoldBackgroundColor: CustomColors.BackgroundColor,
      bottomAppBarColor: CustomColors.LightBackgroundColor,
      cardColor: CustomColors.LightBackgroundColor,
      */
      fontFamily: 'Montserrat',
      textTheme: ThemeData.light().textTheme.copyWith(
            headline1: ThemeData.light().textTheme.headline1!.copyWith(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
            bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
    );
  }

  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
