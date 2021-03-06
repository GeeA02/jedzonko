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
      dividerColor: CustomColors.SecondaryDarkColor,
      accentColor: CustomColors.SecondaryDarkColor,
      fontFamily: 'Montserrat',
      textSelectionTheme: ThemeData.dark().textSelectionTheme.copyWith(
            selectionColor: CustomColors.PrimaryColor,
            selectionHandleColor: CustomColors.PrimaryColor,
          ),
      textTheme: ThemeData.dark().textTheme.copyWith(
            headline1: ThemeData.dark().textTheme.headline1!.copyWith(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
            bodyText1: ThemeData.dark().textTheme.bodyText1!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
            headline5: ThemeData.dark()
                .textTheme
                .headline5!
                .copyWith(color: CustomColors.PrimaryColor),
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
      dividerColor: CustomColors.SecondaryDarkColor,
      /*
      canvasColor: CustomColors.BackgroundColor,
      scaffoldBackgroundColor: CustomColors.BackgroundColor,
      bottomAppBarColor: CustomColors.LightBackgroundColor,
      cardColor: CustomColors.LightBackgroundColor,
      */
      fontFamily: 'Montserrat',
      textSelectionTheme: ThemeData.dark().textSelectionTheme.copyWith(
            selectionColor: CustomColors.PrimaryColor,
            selectionHandleColor: CustomColors.PrimaryColor,
          ),
      textTheme: ThemeData.light().textTheme.copyWith(
            headline1: ThemeData.light().textTheme.headline1!.copyWith(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
            bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
            headline5: ThemeData.light()
                .textTheme
                .headline5!
                .copyWith(color: CustomColors.PrimaryColor),
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
