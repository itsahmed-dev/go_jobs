import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                themeData.brightness == Brightness.light
                    ? 'assets/icons/gojobs_light.svg'
                    : 'assets/icons/gojobs_dark.svg',
              ),
              Spacer(),
              Text(
                'Sign In',
                style: themeData.textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: kDefaultPadding),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) => null,
                      onSaved: (email) {},
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    SizedBox(height: kDefaultPadding),
                    TextFormField(
                      validator: (value) => null,
                      onSaved: (password) {},
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      ),
                      child: Text('Sign In'.toUpperCase()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ThemeToggle(themeData: themeData),
    );
  }
}
