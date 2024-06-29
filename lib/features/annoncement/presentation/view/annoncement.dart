import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
              padding: EdgeInsets.only(left: 125, top: 165),
              child: Text(
                'Comments',
                style: TextStyle(
                  fontSize: 25.0, // Set the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                  color: Colors.white, // Set the text color
                  letterSpacing: 2.0, // Set the spacing between letters
                  // Add more style properties as needed
                ),
              ),
            ),
            Card(
              elevation: 4.0, // Optional: adds shadow under the card
              margin: const EdgeInsets.only(
                  left: 10,
                  right: 14,
                  top: 240,
                  bottom: 420), // Margin around the card
              color: Colors.blue[50], // Set the background color of the card
              child: ListTile(
                contentPadding: const EdgeInsets.only(bottom: 50),
                leading: Transform.translate(
                  offset: const Offset(5,
                      -12), // Move the avatar 5 units to the left and 135 units up
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'images/Announcer.png'), // Replace with your image path
                    backgroundColor: Colors
                        .white, // Set the background color of the CircleAvatar
                    radius: 30.0, // Radius of the avatar
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-6, 10), // Move the title 20 units to the left
                  child: const Text(
                    'Announcer name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform.translate(
                      offset:
                          const Offset(-5, 3), // Move the text 10 units to the right
                      child: Text(
                          'Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                    ),
                    const SizedBox(height: 4.0), // Space between text and date
                    Transform.translate(
                      offset:
                          const Offset(-7, 40), // Move the text 10 units to the right
                      child: const Text(
                        'This is the announcement content.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4.0, // Optional: adds shadow under the card
              margin: const EdgeInsets.only(
                  left: 10,
                  right: 14,
                  top: 400,
                  bottom: 200), // Margin around the card
              color: Colors.blue[50], // Set the background color of the card
              child: ListTile(
                contentPadding: const EdgeInsets.only(bottom: 70),
                leading: Transform.translate(
                  offset: const Offset(5,
                      -12), // Move the avatar 5 units to the left and 135 units up
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'images/Announcer.png'), // Replace with your image path
                    backgroundColor: Colors
                        .white, // Set the background color of the CircleAvatar
                    radius: 30.0, // Radius of the avatar
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-6, 10), // Move the title 20 units to the left
                  child: const Text(
                    'Announcer name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform.translate(
                      offset:
                          const Offset(-5, 3), // Move the text 10 units to the right
                      child: Text(
                          'Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                    ),
                    const SizedBox(height: 4.0), // Space between text and date
                    Transform.translate(
                      offset:
                          const Offset(-7, 40), // Move the text 10 units to the right
                      child: const Text(
                        'This is the announcement content.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4.0, // Optional: adds shadow under the card
              margin: const EdgeInsets.only(
                  left: 10,
                  right: 14,
                  top: 580,
                  bottom: 200), // Margin around the card
              color: Colors.blue[50], // Set the background color of the card
              child: ListTile(
                contentPadding: const EdgeInsets.only(bottom: 70),
                leading: Transform.translate(
                  offset: const Offset(5,
                      -12), // Move the avatar 5 units to the left and 135 units up
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'images/Announcer.png'), // Replace with your image path
                    backgroundColor: Colors
                        .white, // Set the background color of the CircleAvatar
                    radius: 30.0, // Radius of the avatar
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-6, 10), // Move the title 20 units to the left
                  child: const Text(
                    'Announcer name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform.translate(
                      offset:
                          const Offset(-5, 3), // Move the text 10 units to the right
                      child: Text(
                          'Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                    ),
                    const SizedBox(height: 4.0), // Space between text and date
                    Transform.translate(
                      offset:
                          const Offset(-7, 40), // Move the text 10 units to the right
                      child: const Text(
                        'This is the announcement content.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4.0, // Optional: adds shadow under the card
              margin: const EdgeInsets.only(
                  left: 10,
                  right: 14,
                  top: 760,
                  bottom: 200), // Margin around the card
              color: Colors.blue[50], // Set the background color of the card
              child: ListTile(
                contentPadding: const EdgeInsets.only(bottom: 70),
                leading: Transform.translate(
                  offset: const Offset(5,
                      -12), // Move the avatar 5 units to the left and 135 units up
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'images/Announcer.png'), // Replace with your image path
                    backgroundColor: Colors
                        .white, // Set the background color of the CircleAvatar
                    radius: 30.0, // Radius of the avatar
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-6, 10), // Move the title 20 units to the left
                  child: const Text(
                    'Announcer name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform.translate(
                      offset:
                          const Offset(-5, 3), // Move the text 10 units to the right
                      child: Text(
                          'Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                    ),
                    const SizedBox(height: 4.0), // Space between text and date
                    Transform.translate(
                      offset:
                          const Offset(-7, 40), // Move the text 10 units to the right
                      child: const Text(
                        'This is the announcement content.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}