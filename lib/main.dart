import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

void main() => runApp(const JobsApp());

class JobsApp extends StatelessWidget {
  const JobsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Jobs App',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: OnboardingScreen(),
    );
  }
}
