// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String jobExperience;
  final String startYear;
  final String endYear;
  const Experience({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.jobExperience,
    required this.startYear,
    required this.endYear,
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
              'EXPERIENCE',
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
                padding: EdgeInsets.only(
                  right: screenWidth / 22.3529411,
                ),
                child: Divider(
                  color: Colors.purpleAccent,
                ),
              ),
            )
          ],
        ),

        // experience and profession
        Row(
          children: [
            // date you started working
            Text(
              '$startYear - $endYear',
              style: TextStyle(
                fontSize: screenWidth / 47.5,
                color: Colors.purpleAccent,
                fontStyle: FontStyle.italic,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 11.5151515,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // job title
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
                        padding: EdgeInsets.only(
                          top: screenHeight / 168.8,
                        ),
                        child: Text(
                          jobTitle,
                          style: TextStyle(
                            fontSize: screenWidth / 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // company name
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 34.5454545),
                    child: Text(
                      companyName.toUpperCase(),
                      style: TextStyle(
                        fontSize: screenWidth / 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 4.41860465)
              .copyWith(right: screenWidth / 25.3333333),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  jobExperience,
                  style: TextStyle(
                    fontSize: screenWidth / 38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
