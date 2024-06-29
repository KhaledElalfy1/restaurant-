import 'package:aast_restuarant/features/comments/presentation/view/comments.dart';
import 'package:aast_restuarant/features/dean_annoncement/presentation/view/dean_annoncement.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../../../commbined/presentation/view/combined.dart';

class Dean extends StatelessWidget {
  //عميد شؤون الطلاب
  const Dean({super.key});
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
            color: Colors.indigo.shade900, // Dark blue color child: Stack(
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
          Padding(
            padding: const EdgeInsets.only(
                left: 30, right: 14, top: 259, bottom: 60),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Comments()),
                );
              },
              child: Container(
                width: 160,
                height: 130,
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
                    Image.asset('images/comments.png',
                        width: 120.0, height: 60.0),
                    const Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 220, right: 14, top: 259, bottom: 60),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CombinedWidget()),
                );
              },
              child: Container(
                width: 168,
                height: 133,
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
                    Image.asset('images/report.png',
                        width: 190.0, height: 90.0),
                    const Text(
                      'Report',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 130, right: 14, top: 423, bottom: 40),
            child: InkWell(
              onTap: () {
                // Implement sign-in functionality
                // After sign-in, navigate to the NextPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeanAnnouncement()),
                );
              },
              child: Container(
                width: 168,
                height: 133,
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
                    Image.asset('images/Announcement.png',
                        width: 150.0, height: 70.0),
                    const Text(
                      'Announcement ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, right: 4, top: 155, bottom: 2),
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 4.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                left: 320,
                right: 20,
                top: 50,
                bottom: 2), // Adjust the margin to move the container
            padding: const EdgeInsets.only(
                left: 2,
                right: 4,
                top: 4,
                bottom: 2), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                  5.0), // Adjust the padding to move the icon
              child: Transform.scale(
                scale: 1.5, // Scale the entire IconButton
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  color: const Color(0xFFEEB340),
                  onPressed: () {
                    // Handle the notification icon tap
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 50, left: 20), // Adjust the margin to move the button
            child: ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.white, // Inkwell splash color
                  onTap: () {
                    // Handle the button tap
                  },
                  child: SizedBox(
                    width: 60, // Button size
                    height: 60, // Button size
                    child: Image.asset(
                      'images/Announcer.png',
                    ), // Include your image
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              FirebaseAuth.instance.currentUser!.displayName ?? "fer",
              style: const TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 90, right: 4, top: 85, bottom: 2),
            child: Text(
              FirebaseAuth.instance.currentUser!.uid.substring(0, 10),
              style: const TextStyle(
                fontSize: 15.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
