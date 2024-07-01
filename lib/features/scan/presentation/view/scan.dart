import 'package:aast_restuarant/features/deaning_area/presentation/view/deaning_area.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.indigo.shade900,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50,
                  top: -50,
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0,
                      height: 500.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 20),
            child: ClipOval(
              child: Material(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    // Handle the button tap
                  },
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset('images/Announcer.png'),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 300, right: 14, top: 50, bottom: 40),
            child: Stack(
              alignment:
                  Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiningArea()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: const Size(80, 60),
                  ),
                  child:
                      Container(), // Empty container can be used as a placeholder
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 30), // Add padding to all sides of the Image widget
                //   child: Image.asset('images/Result3.PNG', width: 120.0, height: 60.0),
                // ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 5,
                      right: 4,
                      top: 4,
                      bottom: 4), // Add padding to all sides of the Text widget
                  child: Text(
                    'Meals',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Color(0xFFEEB340), // Set the text color
                      letterSpacing: 2.0, // Set the spacing between letters
                      // Add more style properties as needed
                    ),
                  ),
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 125,
                right: 40,
                top: 170,
                bottom: 20), // Add padding to all sides of the Text widget
            child: Text(
              'Scanning....',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
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
