import 'package:flutter/material.dart';
import 'package:hotelhubb/pages/components/my_button.dart';
import 'package:hotelhubb/pages/components/normalTF.dart';
import 'package:hotelhubb/pages/components/passwordTF.dart';
import 'package:hotelhubb/pages/components/square_tile.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //Sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //welcome back you've been missed
                Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),

                //Username textfield
                normalTF(
                  controller: emailController, 
                  hintText: 'Enter your email', 
                  obscureText: false
                ),

                const SizedBox(height: 10),

                //Password textfield
                PasswordTf(
                  controller: passwordController, 
                  hintText: 'Enter your password',
                ),

                const SizedBox(height: 10),

                //forgot password?
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/forgot');
                  },
                  child: Padding(
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
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: signUserIn, 
                  buttonText: "Login"
                ),

                const SizedBox(height: 50),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                //google or apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //google button
                    SquareTile(imagepath: 'lib/assets/google.png'),

                    SizedBox(width: 25),

                    //apple button
                    SquareTile(imagepath: 'lib/assets/apple.png'),
                  ],
                ),
                const SizedBox(height: 10),

                //Not a member register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}