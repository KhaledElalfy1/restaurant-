import 'package:aast_restuarant/features/admin/presentation/view/admin.dart';
import 'package:aast_restuarant/features/dean/presentation/view/dean.dart';
import 'package:aast_restuarant/features/home/presentation/view/home_view.dart';
import 'package:aast_restuarant/features/my_check_box/presentation/view/my_check_box.dart';
import 'package:flutter/material.dart';

import '../../../deaning_area/presentation/view/deaning_area.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width:
                MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height *
                0.25, // Height for the dark blue section
            color: Colors.indigo.shade900, // Dark blue color
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50, // Adjust as needed
                  top: -50, // Adjust as needed
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0, // Set your desired width
                      height: 500.0, // Set your desired height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55, top: 150),
            child: Text(
              'Choose the interface',
              style: TextStyle(
                fontSize: 28.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 250),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePAGE()),
                );
              },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Enrolled.png',
                        width: 120.0, height: 75.0),
                    const Text(
                      'Participating Student',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220, top: 250),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePAGE2()),
                );
              },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/UnEnrolled.png',
                        width: 120.0, height: 75.0),
                    const Text(
                      'Non-partcipating Student',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 400),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dean()),
                );
              },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/dean.png', width: 120.0, height: 75.0),
                    const Text(
                      ' Dean of Students',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220, top: 400),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Admin()),
                );
              },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Admin.png', width: 120.0, height: 75.0),
                    const Text(
                      'Restaurant manager',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, top: 550),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiningArea()),
                );
              },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Dining area supervisor.png',
                        width: 120.0, height: 75.0),
                    const Text(
                      'Dining area supervisor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
