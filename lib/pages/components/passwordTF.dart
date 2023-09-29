import 'package:flutter/material.dart';

class PasswordTf extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;


  const PasswordTf({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  State<PasswordTf> createState() => _PasswordTfState();
}

class _PasswordTfState extends State<PasswordTf> {

  bool obscureText = true; //initially hide the password
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          )
        ),
      ),
    );
  }
}