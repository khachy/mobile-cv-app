// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final String? validatorString;
  final String hintText;
  final int? maxLine;
  const CustomTextFormField({
    super.key,
    this.labelText,
    required this.controller,
    this.validatorString,
    required this.hintText,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: maxLine,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: screenWidth / 25.3333333,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(screenWidth / 25.3333333),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(screenWidth / 25.3333333),
        ),
        floatingLabelStyle: TextStyle(
          fontSize: screenWidth / 19,
          color: Colors.black45,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: screenWidth / 25.3333333,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(screenWidth / 25.3333333),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(screenWidth / 25.3333333),
        ),
      ),
      style: TextStyle(
        fontSize: screenWidth / 21.1111111,
      ),
      cursorColor: Colors.grey.shade700,
      validator: (value) {
        if (value!.isEmpty) {
          return validatorString;
        } else {
          return null;
        }
      },
    );
  }
}
