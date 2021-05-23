import 'package:auth_screens_challenge/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        snackBarTheme: SnackBarThemeData(
          contentTextStyle: TextStyle(fontSize: 20),
        ),
      ),
      title: 'Auth Screen Challenge',
      home: WelcomeScreen(),
    );
  }
}
