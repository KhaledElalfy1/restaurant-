import 'package:aast_restuarant/features/dynamic_list1/presentation/view/dynamic_list1.dart';
import 'package:aast_restuarant/features/home/presentation/view/home_view.dart';
import 'package:aast_restuarant/features/identity/presentation/view/identity.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            child: const DynamicListExample(), // Base color for the background
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
            padding: EdgeInsets.only(left: 125, top: 150),
            child: Text(
              'قائمة الوجبات',
              style: TextStyle(
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xFFEEB340), // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 100, top: 175),
            child: Text(
              'Meals Schedule',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Container(
            width: 370,
            height: 70,
            margin: const EdgeInsets.only(left: 18, top: 220),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.indigo.shade900,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Sat',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.only(left: 1),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Sun',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 3 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Mon',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 4 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Tue',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Wed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Thur',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 5 tap
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF8586AD),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Fri',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
              ],
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
