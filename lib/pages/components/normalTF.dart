import 'package:flutter/material.dart';

class normalTF extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const normalTF({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          // Remove the square appearance by setting border to InputBorder.none
          border: InputBorder.none,
          // Add an underline border
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
