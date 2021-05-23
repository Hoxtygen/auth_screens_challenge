import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.text,
    this.colour = Colors.lightBlueAccent,
    required this.press,
    this.textColor = Colors.white,
    this.icon,
  });
  final String text;
  final VoidCallback press;
  final Color colour;
  final Color textColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              backgroundColor: colour),
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                icon,
                color: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
