import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return themeData.brightness == Brightness.light
        ? FloatingActionButton(
            onPressed: () {
              customTheme.toggleTheme();
            },
            backgroundColor: kBodyTextColorLightTheme,
            child: Icon(Icons.dark_mode),
          )
        : FloatingActionButton(
            onPressed: () {
              customTheme.toggleTheme();
            },
            backgroundColor: kBodyTextColorDarkTheme,
            child: Icon(Icons.light_mode),
          );
  }
}
