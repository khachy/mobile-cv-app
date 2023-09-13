// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final String graduationYear;
  final String course;
  final String institution;
  final String cgpa;
  const Education({
    super.key,
    required this.graduationYear,
    required this.course,
    required this.institution,
    required this.cgpa,
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
              'EDUCATION',
              style: TextStyle(
                fontSize: screenWidth / 47.5,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: screenWidth / 22.3529411),
                child: Divider(
                  color: Colors.purpleAccent,
                ),
              ),
            )
          ],
        ),

        // education
        Row(
          children: [
            // year you left your institution
            Text(
              graduationYear,
              style: TextStyle(
                fontSize: screenWidth / 47.5,
                color: Colors.purpleAccent,
                fontStyle: FontStyle.italic,
              ),
            ),

            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth / 6.44067796),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '.',
                        style: TextStyle(
                          fontSize: screenWidth / 25.3333333,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 47.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight / 168.8),
                        child: Text(
                          course,
                          style: TextStyle(
                            fontSize: screenWidth / 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 30),
                    child: Text(
                      institution,
                      style: TextStyle(
                        fontSize: screenWidth / 36,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 4.31818181),
          child: Row(
            children: [
              Text(
                cgpa,
                style: TextStyle(
                  fontSize: screenWidth / 38,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
