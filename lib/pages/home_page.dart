// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/CV_arrangements/summary.dart';
import '../utils/CV_arrangements/contact.dart';
import '../utils/CV_arrangements/education.dart';
import '../utils/CV_arrangements/experience.dart';
import '../utils/CV_arrangements/skills.dart';
import '../utils/button.dart';
import 'edit_CV_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // initialize the CV information
  String fullName = 'Golden Ikechukwu Iroakaziy';
  String slackUsername = 'Golden Iroakaziy';
  String githubHandle = '@khachy';
  String summary =
      'Hello!, I\'m a skilled Flutter developer with 2 years of experience in crafting dynamic and user friendly mobile applications. My expertise extends to various areas of mobile development, including Git version control, Github collaboration, API integration, and more. What sets me apart is my dedication to creating seamless and visually appealing apps that engage users. Whether it\'s bringing your app idea to life or enhancing an existing project, I\'m here to deliver top-notch mobile solutions tailored to your needs.';
  String companyName = 'Google LLC';
  String jobTitle = 'Flutter Developer';
  String jobExperience =
      'Worked with coworkers to complete tasks. Met deadlines while maintaining high-quality deliverables. Troubleshot minor problems and reported larger technical issues.';
  String startYear = '2021';
  String endYear = 'Current';
  String course = 'BSc. Computer Science';
  String institution = 'University of Nigeria, Nsukka';
  String graduationYear = '2020';
  String cgpa = '4.67';
  String skillOne = 'Flutter';
  String skillTwo = 'Dart';
  String skillThree = 'UI/UX';
  String skillFour = 'Firebase';
  //  update the data
  void updateData(
    String newFullName,
    String newSlackUsername,
    String newGithubHandle,
    String newBio,
    String newCompanyName,
    String newJobTitle,
    String newJobExperience,
    String newStartYear,
    String newEndYear,
    String newCourse,
    String newInstitution,
    String newGraduationYear,
    String newcgpa,
    String newSkillOne,
    String newSkillTwo,
    String newSkillThree,
    String newSkillFour,
  ) {
    setState(() {
      fullName = newFullName;
      slackUsername = newSlackUsername;
      githubHandle = newGithubHandle;
      summary = newBio;
      companyName = newCompanyName;
      jobTitle = newJobTitle;
      jobExperience = newJobExperience;
      startYear = newStartYear;
      endYear = newEndYear;
      course = newCourse;
      institution = newInstitution;
      graduationYear = newGraduationYear;
      cgpa = newcgpa;
      skillOne = newSkillOne;
      skillTwo = newSkillTwo;
      skillThree = newSkillThree;
      skillFour = newSkillFour;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight / 84.4,
                ),
                // the CV container
                Container(
                  padding: EdgeInsets.only(left: screenWidth / 38),
                  height: screenHeight / 1.40666666,
                  width: screenWidth / 1.05555555,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(screenWidth / 31.6666666),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, screenHeight / 168.8),
                        blurRadius: 2.5,
                        spreadRadius: screenWidth / 950,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight / 42.2,
                      ),
                      // full name
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(screenWidth / 76),
                            height: screenHeight / 18.7555555,
                            width: screenWidth / 1.12094395,
                            color: Colors.blue.shade50,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: screenHeight / 84.4,
                                  left: screenWidth / 47.5),
                              child: Text(
                                fullName.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 25.3333333,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 84.4,
                      ),
                      // CV arrangement
                      Contact(
                        githubHandle: githubHandle,
                        slackUsername: slackUsername,
                      ),
                      Summary(
                        text: summary,
                      ),
                      Experience(
                        companyName: companyName,
                        jobTitle: jobTitle,
                        jobExperience: jobExperience,
                        startYear: startYear,
                        endYear: endYear,
                      ),
                      Education(
                        graduationYear: graduationYear,
                        course: course,
                        institution: institution,
                        cgpa: cgpa,
                      ),
                      Skills(
                        skillOne: skillOne,
                        skillTwo: skillTwo,
                        skillThree: skillThree,
                        skillFour: skillFour,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 21.1,
                ),
                Button(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EditCVPage(updateData: updateData),
                      ),
                    );
                  },
                  text: 'Edit CV',
                ),
                SizedBox(
                  height: screenHeight / 21.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
