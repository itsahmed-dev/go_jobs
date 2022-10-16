import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              themeData.brightness == Brightness.light
                  ? 'assets/images/onbording_image_light.png'
                  : 'assets/images/onbording_image_dark.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  Spacer(),
                  // Title
                  Text(
                    'Looking for a dream job?',
                    style: themeData.textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  // Text
                  Text(
                    'Now you can easily find you dream job\nHappy Searching!',
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 2),

                  // Button
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              SignInScreen.routeName,
                            );
                          },
                          child: Text('Get Started'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: ThemeToggle(
        themeData: themeData,
      ),
    );
  }
}
