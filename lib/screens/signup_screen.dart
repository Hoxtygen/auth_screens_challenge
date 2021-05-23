import 'package:auth_screens_challenge/constants/style_utils.dart';
import 'package:auth_screens_challenge/widgets/animated_image.dart';
import 'package:auth_screens_challenge/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: kSignupPurpleGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: topPadding),
                SizedBox(height: 10),
                AnimatedImage(),
                Text(
                  "Hi there!",
                  style: kformSubtitleTextStyle,
                ),
                Text(
                  "Let's get started.",
                  style: kformTitleTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SignupForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
