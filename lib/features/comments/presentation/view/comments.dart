import 'package:aast_restuarant/features/comments/presentation/view/widgets/custom_comments_list.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _Comments();
}

class _Comments extends State<Comments> {
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
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 4, top: 240, bottom: 2),
              child: SingleChildScrollView(
                child: TextField(
                  maxLines: null, // Allow unlimited lines
                  decoration: InputDecoration(
                    hintText: 'Type your new comment ... ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (value) {
                    // Handle the text input
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 330, right: 4, top: 250, bottom: 2),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Success'),
                        content: const Text('Comment submitted successfully!'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                          ),
                        ],
                      );
                    },
                  );
                  // Handle comment submission
                  // Add the comment to your database or data source
                  // Show a "Done" message to the user
                  print('Comment submitted!');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor:
                      Colors.blue, // Set the button background color
                ),
                child: const Text('Submit'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 350.0),
              child: CustomCommentsList(),
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
            const Padding(
              padding: EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
              child: Text(
                'Hi Fareed ',
                style: TextStyle(
                  fontSize: 20.0, // Set the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                  color: Colors.white, // Set the text color
                  letterSpacing: 2.0, // Set the spacing between letters
                  // Add more style properties as needed
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 90, right: 4, top: 85, bottom: 2),
              child: Text(
                '20102302 ',
                style: TextStyle(
                  fontSize: 15.0, // Set the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                  color: Colors.white, // Set the text color
                  letterSpacing: 2.0, // Set the spacing between letters
                  // Add more style properties as needed
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
                          'images/Announcer.png'), // Include your image
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}
