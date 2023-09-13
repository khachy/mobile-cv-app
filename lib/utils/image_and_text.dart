// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  final String image;
  final String text;
  const ImageAndText({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 7.6)
          .copyWith(bottom: screenHeight / 140.666666),
      child: Row(
        children: [
          // icon
          Image.asset(
            image,
            height: screenHeight / 56.2666666,
          ),
          SizedBox(
            width: screenWidth / 47.5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: screenWidth / 38,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
