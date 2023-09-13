// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../image_and_text.dart';

class Contact extends StatelessWidget {
  final String githubHandle;
  final String slackUsername;
  const Contact({
    super.key,
    required this.githubHandle,
    required this.slackUsername,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            // title of the CV
            Text(
              'CONTACT',
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
                padding: EdgeInsets.only(right: screenWidth / 31.6666666),
                child: Divider(
                  color: Colors.purpleAccent,
                ),
              ),
            )
          ],
        ),

        // descriptions
        Padding(
          padding: EdgeInsets.only(left: screenWidth / 15.2)
              .copyWith(bottom: screenHeight / 211),
          child: Column(
            children: [
              ImageAndText(
                image: 'assets/github-logo.png',
                text: githubHandle,
              ),
              ImageAndText(
                image: 'assets/slack.png',
                text: slackUsername,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
