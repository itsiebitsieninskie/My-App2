import 'package:flutter/material.dart';
import 'login_page.dart'; // Import this if you want to navigate to LoginScreen

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPhoneSelected = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void toggleTab(bool isPhone) {
    setState(() {
      isPhoneSelected = isPhone;
    });
  }

  void continueButtonPressed() {
    if (isPhoneSelected) {
      print('Phone: ${phoneController.text}');
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Phone: ${phoneController.text}')));
    } else {
      print('Email/Username: ${emailController.text}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email/Username: ${emailController.text}')),
      );
    }
  }

  void goToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => toggleTab(true),
                  child: Column(
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontWeight:
                              isPhoneSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                      if (isPhoneSelected)
                        Container(height: 2, width: 50, color: Colors.black),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => toggleTab(false),
                  child: Column(
                    children: [
                      Text(
                        'Email / Username',
                        style: TextStyle(
                          fontWeight:
                              !isPhoneSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                      if (!isPhoneSelected)
                        Container(height: 2, width: 100, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: isPhoneSelected ? phoneController : emailController,
              decoration: InputDecoration(
                labelText: isPhoneSelected ? 'Phone' : 'Email or username',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: continueButtonPressed,
              child: const Text('Continue'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: goToLogin,
              child: const Text('Already have an account? Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
