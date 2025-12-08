import 'package:flutter/material.dart';
import 'package:flutter_application_csc_315/screens/login_screen.dart';
import 'package:flutter_application_csc_315/screens/register_screen.dart';
import 'package:flutter_application_csc_315/screens/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSC315 App',
      theme: ThemeData(
        fontFamily: 'Gabriela',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      ),


      // Default opening screen
      home: const Login(),

      // Register your screens here
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
      },
    );
  }
}
