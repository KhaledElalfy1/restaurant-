import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Or any desired background color

      // Center the content
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
          children: [
            // Text with "Registration Number"
            const Text(
              'Registration Number',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Add spacing

            // Container to simulate text field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Registration Number',
                  border: InputBorder.none, // Remove default border
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing

            // Container to simulate password field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: InputBorder.none, // Remove default border
                ),
                obscureText: true, // Hide password characters
              ),
            ),
          ],
        ),
      ),
    );
  }
}
