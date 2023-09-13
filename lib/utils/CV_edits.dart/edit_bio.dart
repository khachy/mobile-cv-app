// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_form_field.dart';

class EditBio extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isVisible;
  final GlobalKey<FormState> formKey;
  final TextEditingController bioController;

  const EditBio({
    super.key,
    required this.onPressed,
    required this.isVisible,
    required this.formKey,
    required this.bioController,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 19),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 47.5),
            height: screenHeight / 16.88,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: screenWidth / 25.3333333,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(left: screenWidth / 19),
                  onPressed: onPressed,
                  icon: Icon(
                    !isVisible
                        ? Icons.arrow_downward_rounded
                        : Icons.arrow_upward_rounded,
                    size: screenWidth / 21.1111111,
                  ),
                ),
              ],
            ),
          ),
          // description
          isVisible
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 47.5),
                  height: screenHeight / 3.66956521,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Write a brief description of your professional background.',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: screenWidth / 25.3333333,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              controller: bioController,
                              hintText: 'Description...',
                              validatorString: 'Please enter your bio!',
                              maxLine: 4,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Divider(
                  thickness: 1,
                  height: 2,
                ),
          SizedBox(
            height: screenHeight / 42.2,
          ),
          isVisible
              ? Divider(
                  thickness: 1,
                )
              : Container(),
        ],
      ),
    );
  }
}