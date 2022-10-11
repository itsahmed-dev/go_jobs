import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
);
