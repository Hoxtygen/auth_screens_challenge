import 'package:auth_screens_challenge/constants/style_utils.dart';
import 'package:auth_screens_challenge/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: kLoginPurpleGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: topPadding),
                SizedBox(height: 10),
                Image.asset("assets/images/person_&_dog.png"),
                Text("Welcome Back!", style: kformSubtitleTextStyle),
                Text(
                  "Please, Log In.",
                  style: kformTitleTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//image: AssetImage("assets/images/log_in.png"),
