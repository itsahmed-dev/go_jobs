import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
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
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Get Started'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
