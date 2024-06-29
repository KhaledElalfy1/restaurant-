import 'package:aast_restuarant/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.indigo.shade900, // Base color for the background
          ),
          Opacity(
            opacity: 0.1,
            child: Image.asset(
              'images/AAST.png',
              width: 800.0, // Set your desired width
              height: 800.0, // Set your desired height
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 135, right: 4, top: 60, bottom: 2),
            child: Text(
              'Identity ',
              style: TextStyle(
                fontSize: 40.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Transform.translate(
              offset: const Offset(150,
                  120), // Move the avatar 5 units to the left and 135 units up
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                    'images/Announcer.png'), // Replace with your image path
                backgroundColor: Colors
                    .white, // Set the background color of the CircleAvatar
                radius: 60.0, // Radius of the avatar
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(
                12.0, 150.0), // Adjust the X and Y values as needed
            child: Container(
              width: 120.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                child: Text(
                  '20102302',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    // Add more style properties as needed
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, right: 4, top: 240, bottom: 2),
            child: Text(
              'فريد وليد',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 4, top: 280, bottom: 2),
            child: Text(
              'College of Computing and Information',
              style: TextStyle(
                fontSize: 17.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, right: 4, top: 300, bottom: 2),
            child: Text(
              'Technology',
              style: TextStyle(
                fontSize: 18.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(110.0, 330.0),
            child: Container(
              width: 200.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.white, // Set the desired border color
                  width: 2.0, // Set the desired border width
                ),
              ),
              child: const Center(
                child: Text(
                  'Enrolled Student',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    // Add more style properties as needed
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 15, bottom: 200),
            child: Image.asset(
              'images/QR code.png',
              width: 1000.0, // Set your desired width
              height: 1000.0, // Set your desired height
            ),
          ),
          Transform.translate(
            offset:
                const Offset(20, 670), // Move the text 10 units to the right
            child: Text(
              'Date: ${DateTime.now().toString().split('.')[0]}',
              style: const TextStyle(
                color: Colors.white, // Set your desired text color
                fontSize: 20, // Adjust font size as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 240, right: 14, top: 770, bottom: 40),
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
                      MaterialPageRoute(builder: (context) => const Identity()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: const Size(160, 60),
                  ),
                  child:
                      Container(), // Empty container can be used as a placeholder
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 5,
                      right: 4,
                      top: 4,
                      bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'identity',
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
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 14, top: 770, bottom: 40),
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
                      MaterialPageRoute(builder: (context) => const HomePAGE()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: const Size(160, 60),
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
                      bottom: 2), // Add padding to all sides of the Text widget
                  child: Text(
                    'Home',
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
        ],
      ),
    );
  }
}
