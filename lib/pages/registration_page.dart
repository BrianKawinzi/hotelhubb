import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotelhubb/pages/components/my_button.dart';
import 'package:hotelhubb/pages/components/normalTF.dart';
import 'package:hotelhubb/pages/components/passwordTF.dart';
import 'package:hotelhubb/pages/components/square_tile.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  //controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //firebase Authentication instance
  final _auth = FirebaseAuth.instance;

  //sing up method
  void SignUserUp(BuildContext context) async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text,
      );

      if (newUser != null) {
        Navigator.of(context).pushNamed('/login');
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Registration Error'),
        // Use e.message to access the error message
      );
    },
  );
}

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //welcome to hotelHubb
                Text(
                  'Welcome to HotelHubb!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),

                //username textfield
               

                const SizedBox(height: 10),

                //email textfield

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

                //confirm password textfield
                PasswordTf(
                  controller: confirmPasswordController, 
                  hintText: 'Confirm Password'
                ),

                const SizedBox(height: 20),

                //register button
                MyButton(
                  onTap: () {
                    SignUserUp(context);
                  }, 
                  buttonText: "Agree and Register"
                ),

                const SizedBox(height: 50),

                //or Sign Up with
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
                          'Or Sign Up with',
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
                  children: const[
                    //google buttons
                    SquareTile(imagepath: 'lib/assets/google.png'),

                    SizedBox(width: 25),

                    //apple button
                    SquareTile(imagepath: 'lib/assets/apple.png')
                  ],
                ),

                const SizedBox(height: 10),

                //Already a member login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a Member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    const SizedBox(width: 4),

                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: Text(
                      'Login now',
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