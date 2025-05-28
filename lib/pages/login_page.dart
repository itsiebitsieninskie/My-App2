import 'package:flutter/material.dart';

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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildTab(0, 'Phone'),
                const SizedBox(width: 20),
                _buildTab(1, 'Email/Username'),
              ],
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: _selectedIndex == 0
                  ? TextFormField(
                      controller: _inputController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                        hintText: 'Enter phone number',
                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter phone number';
                        }
                        return null;
                      },
                    )
                  : TextFormField(
                      controller: _inputController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email/Username',
                        hintText: 'Enter email or username',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email or username';
                        }
                        return null;
                      },
                    ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle login logic
                  }
                },
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _inputController.clear();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: _selectedIndex == index 
              ? Colors.blue.withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _selectedIndex == index 
                ? Colors.blue 
                : Colors.grey,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedIndex == index 
                ? Colors.blue 
                : Colors.grey,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}