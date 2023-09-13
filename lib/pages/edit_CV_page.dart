// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../utils/CV_edits.dart/edit_bio.dart';
import '../utils/CV_edits.dart/edit_education.dart';
import '../utils/CV_edits.dart/edit_experience.dart';
import '../utils/CV_edits.dart/edit_contact.dart';
import '../utils/CV_edits.dart/edit_skills.dart';
import '../utils/button.dart';

class EditCVPage extends StatefulWidget {
  final Function updateData;
  const EditCVPage({
    super.key,
    required this.updateData,
  });

  @override
  State<EditCVPage> createState() => _EditCVPageState();
}

class _EditCVPageState extends State<EditCVPage> {
  // show details
  bool isVisibleForInfo = false;
  bool isVisibleForBio = false;
  bool isVisibleForExperience = false;
  bool isVisibleForEducation = false;
  bool isVisibleForSkills = false;
  final fullNameController = TextEditingController();
  final slackUsernameController = TextEditingController();
  final githubHandleController = TextEditingController();
  final bioController = TextEditingController();
  final companyNameController = TextEditingController();
  final jobTitleController = TextEditingController();
  final startYearController = TextEditingController();
  final endYearController = TextEditingController();
  final courseController = TextEditingController();
  final institutionController = TextEditingController();
  final cgpaController = TextEditingController();
  final graduationYearController = TextEditingController();
  final jobExperienceController = TextEditingController();
  final skillOneController = TextEditingController();
  final skillTwoController = TextEditingController();
  final skillThreeController = TextEditingController();
  final skillFourController = TextEditingController();

  bool isLoading = false;
  // validate the form before saving changes
  final formKeyForInfo = GlobalKey<FormState>();
  final formKeyForBio = GlobalKey<FormState>();
  final formKeyForExperience = GlobalKey<FormState>();
  final formKeyForEducation = GlobalKey<FormState>();
  final formKeyForSkills = GlobalKey<FormState>();
  void showDetailsForInfo() {
    setState(() {
      isVisibleForInfo = !isVisibleForInfo;
    });
  }

  void showDetailsForBio() {
    setState(() {
      isVisibleForBio = !isVisibleForBio;
    });
  }

  void showDetailsForExperience() {
    setState(() {
      isVisibleForExperience = !isVisibleForExperience;
    });
  }

  void showDetailsForEducation() {
    setState(() {
      isVisibleForEducation = !isVisibleForEducation;
    });
  }

  void showDetailsForSkills() {
    setState(() {
      isVisibleForSkills = !isVisibleForSkills;
    });
  }

  @override
  void dispose() {
// dispose controllers when not in use
    fullNameController.dispose();
    slackUsernameController.dispose();
    githubHandleController.dispose();
    bioController.dispose();
    companyNameController.dispose();
    jobExperienceController.dispose();
    jobTitleController.dispose();
    startYearController.dispose();
    endYearController.dispose();
    courseController.dispose();
    institutionController.dispose();
    cgpaController.dispose();
    graduationYearController.dispose();
    skillOneController.dispose();
    skillTwoController.dispose();
    skillThreeController.dispose();
    skillFourController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: screenWidth / 19,
          ),
        ),
        title: Text(
          'Edit your CV',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: screenWidth / 21.1111111,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 35.1666666,
            ),
            // personal information
            PersonalInformation(
              formKey: formKeyForInfo,
              fullNameController: fullNameController,
              githubHandleController: githubHandleController,
              isVisible: isVisibleForInfo,
              slackUsernameController: slackUsernameController,
              onPressed: () {
                showDetailsForInfo();
              },
            ),

            // // your BIO
            EditBio(
              bioController: bioController,
              formKey: formKeyForBio,
              isVisible: isVisibleForBio,
              onPressed: () {
                showDetailsForBio();
              },
            ),
            SizedBox(
              height: screenHeight / 46.8888888,
            ),
            // your work experience
            EditExperience(
              companyNameController: companyNameController,
              formKey: formKeyForExperience,
              isVisible: isVisibleForExperience,
              onPressed: () {
                showDetailsForExperience();
              },
              endYearController: endYearController,
              jobExperienceController: jobExperienceController,
              jobTitleController: jobTitleController,
              startYearController: startYearController,
            ),
            SizedBox(
              height: screenHeight / 46.8888888,
            ),
            // your education
            EditEducation(
              cgpaController: cgpaController,
              courseController: courseController,
              formKey: formKeyForEducation,
              graduationYearController: graduationYearController,
              institutionController: institutionController,
              isVisible: isVisibleForEducation,
              onPressed: () {
                showDetailsForEducation();
              },
            ),
            SizedBox(
              height: screenHeight / 46.8888888,
            ),
            // your skill
            EditSkills(
              skillOneController: skillOneController,
              skillTwoController: skillTwoController,
              skillThreeController: skillThreeController,
              skillFourController: skillFourController,
              formKey: formKeyForSkills,
              isVisible: isVisibleForSkills,
              onPressed: () {
                showDetailsForSkills();
              },
            ),

            SizedBox(
              height: screenHeight / 16.88,
            ),
            Button(
              onPressed: isVisibleForInfo &&
                      isVisibleForBio &&
                      isVisibleForExperience &&
                      isVisibleForEducation &&
                      isVisibleForSkills &&
                      !isLoading
                  ? () async {
                      String newFullName = fullNameController.text;
                      String newSlackUsername = slackUsernameController.text;
                      String newGitHubHandle = githubHandleController.text;
                      String newBio = bioController.text;
                      String newCompanyName = companyNameController.text;
                      String newJobTitle = jobTitleController.text;
                      String newJobExperience = jobExperienceController.text;
                      String newStartYear = startYearController.text;
                      String newEndYear = endYearController.text;
                      String newCourse = courseController.text;
                      String newInstitution = institutionController.text;
                      String newGraduationYear = graduationYearController.text;
                      String newcgpa = cgpaController.text;
                      String newSkillOne = skillOneController.text;
                      String newSkillTwo = skillTwoController.text;
                      String newSkillThree = skillThreeController.text;
                      String newSkillFour = skillFourController.text;

                      final isValidForInfo =
                          formKeyForInfo.currentState!.validate();
                      final isValidForBio =
                          formKeyForBio.currentState!.validate();
                      final isValidforExperience =
                          formKeyForExperience.currentState!.validate();
                      final isValidForEducation =
                          formKeyForEducation.currentState!.validate();
                      final isValidForSkills =
                          formKeyForSkills.currentState!.validate();
                      if (isValidForInfo &&
                          isValidForBio &&
                          isValidforExperience &&
                          isValidForEducation &&
                          isValidForSkills) {
                        setState(() {
                          isLoading = true;
                        });
                        await Future.delayed(Duration(seconds: 5));
                        setState(() {
                          isLoading = false;
                        });
                        widget.updateData(
                          newFullName.trim(),
                          newSlackUsername.trim(),
                          newGitHubHandle.trim(),
                          newBio.trim(),
                          newCompanyName.trim(),
                          newJobTitle.trim(),
                          newJobExperience.trim(),
                          newStartYear.trim(),
                          newEndYear.trim(),
                          newCourse.trim(),
                          newInstitution.trim(),
                          newGraduationYear.trim(),
                          newcgpa.trim(),
                          newSkillOne.trim(),
                          newSkillTwo.trim(),
                          newSkillThree.trim(),
                          newSkillFour.trim(),
                        );
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    }
                  : null,
              text: isLoading ? 'Saving...' : 'Save changes',
            ),
            SizedBox(
              height: screenHeight / 16.88,
            ),
          ],
        ),
      ),
    );
  }
}
