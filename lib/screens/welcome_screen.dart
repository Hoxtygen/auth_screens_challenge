import 'package:auth_screens_challenge/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Authy"),
            RoundedButton(
              press: () {
                print("you clicked login");
              },
              text: "Login",
            ),
            RoundedButton(
                colour: Colors.pinkAccent,
                text: "Register",
                press: () {
                  print("register button pressed");
                }),
          ],
        ),
      ),
    );
  }
}
