// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final String text;
  const Summary({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            // title of the CV
            Text(
              'ABOUT',
              style: TextStyle(
                fontSize: screenWidth / 47.5,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
            SizedBox(
              width: screenWidth / 95,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: screenWidth / 25.3333333),
                child: Divider(
                  color: Colors.purpleAccent,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 5.06666666)
              .copyWith(right: screenWidth / 19),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                text,
                style: TextStyle(fontSize: screenWidth / 38),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
