// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_form_field.dart';

class EditExperience extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isVisible;
  final GlobalKey<FormState> formKey;
  final TextEditingController companyNameController;
  final TextEditingController jobTitleController;
  final TextEditingController startYearController;
  final TextEditingController endYearController;
  final TextEditingController jobExperienceController;

  const EditExperience({
    super.key,
    required this.onPressed,
    required this.isVisible,
    required this.formKey,
    required this.companyNameController,
    required this.jobTitleController,
    required this.startYearController,
    required this.endYearController,
    required this.jobExperienceController,
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
                  'Experience',
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
                  height: screenHeight / 1.79574468,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Enter a brief description about your work experience, starting with your current or most recent job.',
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
                              controller: companyNameController,
                              hintText: 'e.g Google LLC',
                              labelText: 'Company Name',
                              validatorString:
                                  'Please enter your company\'s name!',
                              maxLine: 1,
                            ),
                            SizedBox(
                              height: screenHeight / 56.2666666,
                            ),
                            CustomTextFormField(
                              controller: jobTitleController,
                              hintText: 'e.g Flutter Developer',
                              labelText: 'Job Title',
                              validatorString: 'Please enter your job title!',
                              maxLine: 1,
                            ),
                            SizedBox(
                              height: screenHeight / 56.2666666,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    controller: startYearController,
                                    hintText: 'e.g 2020',
                                    labelText: 'Start Year',
                                    validatorString:
                                        'Please enter your start year!',
                                    maxLine: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth / 38,
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    controller: endYearController,
                                    hintText: 'e.g Current',
                                    labelText: 'End Year',
                                    validatorString:
                                        'Please enter your end year!',
                                    maxLine: 1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight / 56.2666666,
                            ),
                            CustomTextFormField(
                              controller: jobExperienceController,
                              hintText: 'Write your experience here...',
                              validatorString:
                                  'Please enter your job experience!',
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
