import 'package:auth_screens_challenge/constants/style_utils.dart';
import 'package:auth_screens_challenge/screens/signup_screen.dart';
import 'package:auth_screens_challenge/utils/email_validator.dart';
import 'package:auth_screens_challenge/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                icon: Icons.arrow_forward_ios_outlined,
                colour: kLoginDarkPurple,
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Logging you into your account, this will take some few seconds"),
                      duration: const Duration(seconds: 1),
                      backgroundColor: Colors.blue,
                    ));
                  }
                }),
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
              colour: Color.fromRGBO(210, 155, 219, 1),
              text: "Create an account",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
