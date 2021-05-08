import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.text,
      this.colour = Colors.lightBlueAccent,
      required this.press,
      this.textColor = Colors.white});
  final String text;
  final VoidCallback press;
  final Color colour;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              backgroundColor: colour),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
