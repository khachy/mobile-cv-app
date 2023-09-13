// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const Button({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 15.2),
      child: Center(
        child: SizedBox(
          width: double.infinity,
          height: screenHeight / 15.3454545,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth / 19,
                letterSpacing: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth / 21.1111111),
              ),
              elevation: 0.0,
              backgroundColor: Colors.purpleAccent,
            ),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
