import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: kPrimaryColor,
      padding: EdgeInsets.all(kDefaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultBorderRadius),
        ),
      ),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kBackgroundColorDarkTheme,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: kPrimaryColor,
      padding: EdgeInsets.all(kDefaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultBorderRadius),
        ),
      ),
    ),
  ),
);
