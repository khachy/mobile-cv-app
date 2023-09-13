// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_form_field.dart';

class EditSkills extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isVisible;
  final GlobalKey<FormState> formKey;
  final TextEditingController skillOneController;
  final TextEditingController skillTwoController;
  final TextEditingController skillThreeController;
  final TextEditingController skillFourController;
  const EditSkills({
    super.key,
    required this.onPressed,
    required this.isVisible,
    required this.formKey,
    required this.skillOneController,
    required this.skillTwoController,
    required this.skillThreeController,
    required this.skillFourController,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 19)
          .copyWith(bottom: screenHeight / 105.5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 47.5),
            height: screenHeight / 21.1111111,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Skills',
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
                  height: screenHeight / 4.22,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Enter your skill, make sure it matches your job description.',
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
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    controller: skillOneController,
                                    hintText: 'e.g Dart',
                                    labelText: 'Skill One',
                                    validatorString: 'Please enter a skill!',
                                    maxLine: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth / 38,
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    controller: skillTwoController,
                                    hintText: 'e.g UI/UX',
                                    labelText: 'Skill Two',
                                    validatorString: 'Please enter a skill!',
                                    maxLine: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth / 38,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              controller: skillThreeController,
                              hintText: 'e.g Flutter',
                              labelText: 'Skill Three(Optional)',
                              maxLine: 1,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth / 38,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: skillFourController,
                              hintText: 'e.g Firebase',
                              labelText: 'Skill Four(Optional)',
                              maxLine: 1,
                            ),
                          )
                        ],
                      ),
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
