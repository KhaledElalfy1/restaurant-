import 'package:aast_restuarant/features/annoncement/presentation/view/annoncement.dart';
import 'package:aast_restuarant/features/choose_meal/presentation/view/choose_meal_view.dart';
import 'package:aast_restuarant/features/feed_back/presentation/view/feed_back.dart';
import 'package:aast_restuarant/features/identity/presentation/view/identity.dart';
import 'package:aast_restuarant/features/schedual/presentation/view/schedual.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePAGE extends StatelessWidget {
  //طالب مشترك
  const HomePAGE({super.key});
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 14, top: 189, bottom: 40),
                        child: InkWell(
                          onTap: () {
                            // Implement sign-in functionality
                            // After sign-in, navigate to the NextPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Schedule()),
                            );
                          },
                          child: Container(
                            width: 105,
                            height: 105,
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
                                Image.asset('images/MealsSchedule.png',
                                    width: 120.0, height: 60.0),
                                const Text(
                                  'MealsSchedule',
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
                            left: 5, right: 14, top: 189, bottom: 40),
                        child: InkWell(
                          onTap: () {
                            // Implement sign-in functionality
                            // After sign-in, navigate to the NextPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChooseMeals()),
                            );
                          },
                          child: Container(
                            width: 105,
                            height: 105,
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
                                Image.asset('images/Result3.PNG',
                                    width: 120.0, height: 60.0),
                                const Text('Choose Meal'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 14, top: 189, bottom: 40),
                        child: InkWell(
                          onTap: () {
                            // Implement sign-in functionality
                            // After sign-in, navigate to the NextPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChooseMeals()),
                            );
                          },
                          child: Container(
                            width: 105,
                            height: 105,
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
                                Image.asset('images/Order.png',
                                    width: 120.0, height: 60.0),
                                const Text(
                                  'Make Order',
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
                            left: 5, right: 14, top: 189, bottom: 40),
                        child: InkWell(
                          onTap: () {
                            // Implement sign-in functionality
                            // After sign-in, navigate to the NextPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeedbackScreen()),
                            );
                          },
                          child: Container(
                            width: 105,
                            height: 105,
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
                                Image.asset('images/4658943.png',
                                    width: 120.0, height: 60.0),
                                const Text('FeedBack'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 4, top: 320, bottom: 2),
            child: Text(
              'Announcements',
              style: TextStyle(
                fontSize: 24.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.black, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 4, top: 140, bottom: 2),
            child: Text(
              'Modules',
              style: TextStyle(
                fontSize: 30.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 250, right: 14, top: 313, bottom: 40),
            child: Stack(
              alignment:
                  Alignment.center, // Align children in the center of the stack
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Implement sign-in functionality
                    // After sign-in, navigate to the NextPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Announcement()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Colors.blue[100], // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: const Size(
                        150, 50), // Set the fixed size for the button
                  ),
                  child: const Text(
                    'View All>',
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
          Card(
            elevation: 4.0, // Optional: adds shadow under the card
            margin: const EdgeInsets.only(
                left: 10,
                right: 14,
                top: 360,
                bottom: 300), // Margin around the card
            color: Colors.blue[50], // Set the background color of the card
            child: ListTile(
              leading: Transform.translate(
                offset: const Offset(-2,
                    -80), // Move the avatar 5 units to the left and 135 units up
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'images/Announcer.png'), // Replace with your image path
                  backgroundColor: Colors
                      .white, // Set the background color of the CircleAvatar
                  radius: 30.0, // Radius of the avatar
                ),
              ),
              title: Transform.translate(
                offset:
                    const Offset(-6, 10), // Move the title 20 units to the left
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
                    offset: const Offset(
                        -5, 3), // Move the text 10 units to the right
                    child: Text(
                        'Date: ${DateTime.now().toString()}'), // Replace with actual date and time
                  ),
                  const SizedBox(height: 4.0), // Space between text and date
                  Transform.translate(
                    offset: const Offset(
                        -7, 40), // Move the text 10 units to the right
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
          Padding(
            padding:
                const EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              FirebaseAuth.instance.currentUser!.displayName ?? 'Far',
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
            padding: const EdgeInsets.only(
              left: 90,
              right: 4,
              top: 85,
              bottom: 2,
            ),
            child: Text(
              '${FirebaseAuth.instance.currentUser!.uid} '.substring(0, 10),
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
