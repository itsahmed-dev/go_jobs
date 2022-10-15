import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

CustomTheme customTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool isDarkTheme = true;
  ThemeMode get currentTheme {
    return isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme => _lightTheme;

  static ThemeData get darkTheme => _darkTheme;
}

final ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme)
      .copyWith(bodyText2: TextStyle(color: kBodyTextColorLightTheme)),
  elevatedButtonTheme: elevatedButtonThemeData,
  inputDecorationTheme: InputDecorationTheme(
    border: textFieldOutlineInputBorderLightTheme,
    enabledBorder: textFieldOutlineInputBorderLightTheme,
    focusedBorder: textFieldOutlineInputBorderLightTheme,
  ),
);

final ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kBackgroundColorDarkTheme,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
      .copyWith(bodyText2: TextStyle(color: kBodyTextColorDarkTheme)),
  elevatedButtonTheme: elevatedButtonThemeData,
  inputDecorationTheme: InputDecorationTheme(
    border: textFieldOutlineInputBorderDarkTheme,
    enabledBorder: textFieldOutlineInputBorderDarkTheme,
    focusedBorder: textFieldOutlineInputBorderDarkTheme,
  ),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: kPrimaryColor,
    padding: EdgeInsets.all(kDefaultPadding),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(kDefaultBorderRadius),
      ),
    ),
  ),
);

const textFieldOutlineInputBorderLightTheme = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(kDefaultBorderRadius)),
  borderSide: BorderSide(color: kTextFieldOutlineBorderSideColor),
);

final textFieldOutlineInputBorderDarkTheme =
    textFieldOutlineInputBorderLightTheme.copyWith(
        borderSide: BorderSide(color: kBodyTextColorDarkTheme));
