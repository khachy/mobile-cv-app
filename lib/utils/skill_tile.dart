// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SkillTile extends StatelessWidget {
  final Color iconColor;
  final String skillName;
  const SkillTile({
    super.key,
    required this.iconColor,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 7.91666666)
          .copyWith(bottom: screenHeight / 211),
      child: Row(
        children: [
          // skill color
          Icon(
            Icons.square_rounded,
            color: iconColor,
            size: screenWidth / 38,
          ),
          SizedBox(
            width: screenWidth / 95,
          ),
          Text(
            skillName,
            style: TextStyle(
              fontSize: screenWidth / 38,
            ),
          ),
        ],
      ),
    );
  }
}
