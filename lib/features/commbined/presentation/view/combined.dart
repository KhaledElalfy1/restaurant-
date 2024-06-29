import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CombinedWidget extends StatefulWidget {
  const CombinedWidget({super.key});

  @override
  _CombinedWidgetState createState() => _CombinedWidgetState();
}

class _CombinedWidgetState extends State<CombinedWidget> {
  String selectedItem = 'Breakfast'; // Initial value for the dropdown
  DateTime selectedDate = DateTime.now(); // Initial value for the date

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int outsideMeals = 0; // Placeholder value
    int participatingStudentsMeals = 0; // Placeholder value
    int studentsEnteredRestaurant = 0; // Placeholder value
    double averageRate = 0.0; // Placeholder value

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
          Positioned(
            top: 235,
            left: 240,
            child: Column(
              children: [
                DropdownButton<String>(
                  items: <String>['Breakfast', 'Lunch', 'Dinner']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            fontSize: 18), // Adjust the font size as needed
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedItem = newValue!;
                    });
                    print('Selected item: $newValue');
                  },
                  value: selectedItem, // Set the initial value
                  dropdownColor: Colors.blue, // Set the desired color
                ),
                const SizedBox(height: 0),
              ],
            ),
          ),
          Positioned(
            top:
                220, // Adjust as necessary to position the second part correctly
            left: 40,
            child: Column(
              children: [
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: const Text(
                    '  Select date',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top:
                260, // Adjust as necessary to position the second part correctly
            left: 40,
            child: Column(
              children: [
                const SizedBox(
                    height: 5), // Ensure this matches the spacing required
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.calendar_today, color: Colors.black),
                    const SizedBox(width: 10),
                    Text(
                      DateFormat('yyyy-MM-dd').format(selectedDate),
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, top: 155),
            child: Text(
              'Reports',
              style: TextStyle(
                fontSize: 25.0, // Set the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Colors.white, // Set the text color
                letterSpacing: 2.0, // Set the spacing between letters
                // Add more style properties as needed
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                Text(
                  'Outside Meals: $outsideMeals',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold), // Adjust the font size as needed
                ),
                const SizedBox(height: 30), // Add spacing between widgets
                Text(
                  'Participating Students Meals: $participatingStudentsMeals',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold), // Adjust the font size as needed
                ),
                const SizedBox(height: 30), // Add spacing between widgets
                Text(
                  'Students Entered the Restaurant: $studentsEnteredRestaurant',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold), // Adjust the font size as needed
                ),
                const SizedBox(height: 30), // Add spacing between widgets
                Text(
                  'Average Rate: $averageRate',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold), // Adjust the font size as needed
                ),
                const SizedBox(
                    height: 80), // Increase spacing before the button
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20), // Adjust bottom padding as needed
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement printing logic here
                      print('Printing report...');
                    },
                    child: const Text('Print Report'),
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
