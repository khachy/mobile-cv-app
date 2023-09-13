// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../skill_tile.dart';

class Skills extends StatelessWidget {
  final String skillOne;
  final String skillTwo;
  final String skillThree;
  final String skillFour;
  const Skills({
    super.key,
    required this.skillOne,
    required this.skillTwo,
    required this.skillThree,
    required this.skillFour,
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
              'SKILLS',
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
                padding: EdgeInsets.only(right: screenWidth / 20),
                child: Divider(
                  color: Colors.purpleAccent,
                ),
              ),
            )
          ],
        ),

        // LIST OF SKILLS
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  SkillTile(
                    iconColor: Colors.blue,
                    skillName: skillOne,
                  ),
                  SkillTile(
                    iconColor: Colors.green,
                    skillName: skillTwo,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight / 140.666666,
              ),
              Row(
                children: [
                  SkillTile(
                    iconColor:
                        skillThree.isEmpty ? Colors.transparent : Colors.teal,
                    skillName: skillThree,
                  ),
                  SkillTile(
                    iconColor:
                        skillFour.isEmpty ? Colors.transparent : Colors.pink,
                    skillName: skillFour,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
