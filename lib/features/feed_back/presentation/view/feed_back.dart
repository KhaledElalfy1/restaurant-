import 'package:aast_restuarant/features/custom_star_rating/presentation/view/custom_star_rating.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            // Add your content here if needed
          ),
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 30,
                  top: 230,
                  bottom: 450), // Adjust the padding as needed
              child: CustomStarRating(
                initialRating: 3.0,
                onRatingChanged: (rating) {
                  // Handle the rating update here
                  print('User rated: $rating');
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 4, top: 350, bottom: 2),
            child: SingleChildScrollView(
              child: TextField(
                maxLines: null, // Allow unlimited lines
                decoration: InputDecoration(
                  hintText: 'Type your comment...',
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
            padding:
                const EdgeInsets.only(left: 165, right: 4, top: 450, bottom: 2),
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
                padding: const EdgeInsets.all(15),
                foregroundColor: const Color(0xFFEEB340),
                backgroundColor:
                    Colors.indigo.shade900, // Set the button background color
              ),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
