import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hotelhubb/pages/auth_page.dart';
import 'firebase_options.dart';
import 'package:hotelhubb/pages/forgotPassword.dart';
import 'package:hotelhubb/pages/login_page.dart';
import 'package:hotelhubb/pages/registration_page.dart';
import 'package:hotelhubb/pages/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/auth':(context) => AuthPage(),
      },
    );
  }
}