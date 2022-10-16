import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

void main() => runApp(const JobsApp());

class JobsApp extends StatefulWidget {
  const JobsApp({super.key});

  @override
  State<JobsApp> createState() => _JobsAppState();
}

class _JobsAppState extends State<JobsApp> {
  @override
  void initState() {
    super.initState();
    customTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Jobs',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: customTheme.currentTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        SignInScreen.routeName: (context) => SignInScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
