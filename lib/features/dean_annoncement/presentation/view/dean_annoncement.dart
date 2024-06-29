import 'package:flutter/material.dart';

class DeanAnnouncement extends StatelessWidget {
  //عميد شؤون الطلاب
  const DeanAnnouncement({super.key});
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

            const Padding(
              padding: EdgeInsets.only(left: 75, right: 4, top: 160, bottom: 2),
              child: Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 30.0, // Set the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                  color: Colors.white, // Set the text color
                  letterSpacing: 4.0, // Set the spacing between letters
                  // Add more style properties as needed
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 4, top: 240, bottom: 2),
              child: SingleChildScrollView(
                child: TextField(
                  maxLines: null, // Allow unlimited lines
                  decoration: InputDecoration(
                    hintText: 'Type your new announcement  ... ',
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
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 350, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ), // Assuming you have a list of old comments
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 580, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 1730, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 810, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 1040, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 1270, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
              ),
            ),

            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(
                  left: 10, right: 14, top: 1500, bottom: 200),
              color: Colors.blue[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit action here
                          // You can navigate to an edit screen or show a dialog.
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action here
                          // You can show a confirmation dialog before deleting.
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 70),
                    leading: Transform.translate(
                      offset: const Offset(5, -50),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/Announcer.png'),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-6, -40),
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
                          offset: const Offset(-5, -30),
                          child: Text('Date: ${DateTime.now().toString()}'),
                        ),
                        const SizedBox(height: 4.0),
                        Transform.translate(
                          offset: const Offset(-7, -0),
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
                ],
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
                          'images/Announcer.png'), // Include your image
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}
