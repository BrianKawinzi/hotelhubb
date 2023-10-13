import 'package:flutter/material.dart';
import 'package:hotelhubb/pages/components/my_button.dart';
import 'package:hotelhubb/pages/components/normalTF.dart';


class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  //Text editing controllers
  final emailController = TextEditingController();


  //send code method
  void sendCode() {}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Back Button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                //Forgot password text
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                //Don't worry text
                Text(
                  'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),

                //email textfield
                normalTF(
                  controller: emailController, 
                  hintText: 'Enter your email', 
                  obscureText: false,
                ),

                const SizedBox(height: 25),


                //send code button
                MyButton(
                  onTap: sendCode, 
                  buttonText: "Send Code",
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}