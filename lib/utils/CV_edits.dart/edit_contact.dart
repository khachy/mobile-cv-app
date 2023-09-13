// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_form_field.dart';

class PersonalInformation extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isVisible;
  final GlobalKey<FormState> formKey;
  final TextEditingController fullNameController;
  final TextEditingController slackUsernameController;
  final TextEditingController githubHandleController;
  const PersonalInformation({
    super.key,
    required this.onPressed,
    required this.isVisible,
    required this.formKey,
    required this.fullNameController,
    required this.slackUsernameController,
    required this.githubHandleController,
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
            height: screenHeight / 21.1,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Contact',
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
                            'Complete your personal information to make your CV even better.',
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
                                controller: fullNameController,
                                hintText: 'e.g Golden Ikechukwu Iroakaziy',
                                labelText: 'Full Name',
                                validatorString: 'Please enter your full name!',
                                maxLine: 1,
                              ),
                              SizedBox(
                                height: screenHeight / 56.2666666,
                              ),
                              CustomTextFormField(
                                controller: slackUsernameController,
                                hintText: 'e.g Golden Iroakaziy',
                                labelText: 'Slack Username',
                                validatorString:
                                    'Please enter your slack username!',
                                maxLine: 1,
                              ),
                              SizedBox(
                                height: screenHeight / 56.2666666,
                              ),
                              CustomTextFormField(
                                controller: githubHandleController,
                                hintText: 'e.g @khachy',
                                labelText: 'GitHub Handle',
                                validatorString:
                                    'Please enter your github handle!',
                                maxLine: 1,
                              )
                            ],
                          ))
                    ],
                  ),
                )
              : Divider(
                  thickness: 1,
                  height: 2,
                ),
          SizedBox(height: screenHeight / 42.2),
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
