import 'package:flutter/material.dart';
import 'package:hotelhubb/pages/forgotPassword.dart';
import 'package:hotelhubb/pages/login_page.dart';
import 'package:hotelhubb/pages/registration_page.dart';
import 'package:hotelhubb/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HotelHubb',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register':(context) => RegistrationPage(),
        '/forgot':(context) => ForgotPassword(),
      },
    );
  }
}