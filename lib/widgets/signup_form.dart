import 'package:auth_screens_challenge/constants/style_utils.dart';
import 'package:auth_screens_challenge/screens/login_screen.dart';
import 'package:auth_screens_challenge/utils/email_validator.dart';
import 'package:auth_screens_challenge/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String userName;
  late String password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              width: size.width * 0.8,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Username',
                  fillColor: Colors.white,
                  filled: true,
                ),
                validator: (value) =>
                    !isEmail(value) ? 'Invalid email address' : null,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: size.width * 0.8,
              child: TextFormField(
                obscureText: true,
                autocorrect: false,
                obscuringCharacter: "*",
                enableSuggestions: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_sharp),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8) {
                    return 'Password must be 8 characters or more.';
                  }
                  return null;
                },
              ),
            ),
            RoundedButton(
              colour: kSignupDarkPurple,
              text: "Create an Account",
              press: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Creating your account, this will take some few seconds"),
                    duration: const Duration(seconds: 1),
                    backgroundColor: Colors.blue,
                  ));
                }
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "--------------------------------------   Or   --------------------------------",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            RoundedButton(
              colour: Color.fromRGBO(160, 148, 227, 1),
              text: "Log In",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
