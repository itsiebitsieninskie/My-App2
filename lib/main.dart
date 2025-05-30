import 'package:flutter/material.dart';
import 'pages/login_page.dart';

class Country {
  final String name;
  final String code;
  final String dialCode;

  Country({required this.name, required this.code, required this.dialCode});
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
