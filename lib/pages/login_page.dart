import 'package:flutter/material.dart';
import 'package:hotelhubb/pages/components/normalTF.dart';
import 'package:hotelhubb/pages/components/passwordTF.dart';
import 'package:hotelhubb/pages/components/my_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  //Login method
  void Login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.orange],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //back button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      color: Colors.white,
                      onPressed: () {
                        //Navigate back to the previous screen
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                Text(
                  'Welcome back to HotelHubb',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),

                //username textfield
                normalTF(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false
                ),

                const SizedBox(height: 10),

                //password textfield
                PasswordTf(
                  controller: passwordController, 
                  hintText: 'Password'
                ),
                const SizedBox(height: 10),

                //forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: Login, 
                  buttonText: "Login",
                ),

                //or continue with

                //google + apple sign in buttons

                //not a member register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
