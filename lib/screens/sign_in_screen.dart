import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                Theme.of(context).brightness == Brightness.light
                    ? 'assets/icons/gojobs_light.svg'
                    : 'assets/icons/gojobs_dark.svg',
              ),
              Spacer(),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      // color: Theme.of(context).brightness == Brightness.light
                      //     ? Colors.black
                      //     : Colors.white,
                    ),
              ),
              SizedBox(),
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
              SizedBox(
                width: double.infinity,
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
            ],
          ),
        ),
      ),
    );
  }
}
