// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_form_field.dart';

class EditEducation extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isVisible;
  final GlobalKey<FormState> formKey;
  final TextEditingController courseController;
  final TextEditingController institutionController;
  final TextEditingController cgpaController;
  final TextEditingController graduationYearController;
  const EditEducation({
    super.key,
    required this.onPressed,
    required this.isVisible,
    required this.formKey,
    required this.courseController,
    required this.institutionController,
    required this.cgpaController,
    required this.graduationYearController,
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
                  'Education',
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
                  height: screenHeight / 2.11,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Enter your education level, starting with your highest attainment.',
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
                              controller: courseController,
                              hintText: 'e.g BSc. Computer Science',
                              labelText: 'Course',
                              validatorString: 'Please enter your course!',
                              maxLine: 1,
                            ),
                            SizedBox(
                              height: screenHeight / 56.2666666,
                            ),
                            CustomTextFormField(
                              controller: institutionController,
                              hintText: 'e.g University of Nigeria, Nsukka',
                              labelText: 'Institution',
                              validatorString: 'Please enter your institution!',
                              maxLine: 1,
                            ),
                            SizedBox(
                              height: screenHeight / 56.2666666,
                            ),
                            CustomTextFormField(
                              controller: graduationYearController,
                              hintText: 'e.g 2020',
                              labelText: 'Graduation Year',
                              validatorString:
                                  'Please enter your graduation year!',
                              maxLine: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 56.2666666,
                      ),
                      CustomTextFormField(
                        controller: cgpaController,
                        hintText: 'e.g 4.76',
                        labelText: 'CGPA(Optional)',
                        maxLine: 1,
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
