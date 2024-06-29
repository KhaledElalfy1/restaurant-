import 'package:aast_restuarant/features/scan/presentation/view/scan.dart';
import 'package:flutter/material.dart';

class DiningArea extends StatelessWidget {
  final List<Map<String, String>> orders = [
    {
      'date': '2024-06-29',
      'name': 'Ayman',
      'price': '50',
      'ingredients': 'Rice, Chicken, Spices'
    },
    {
      'date': '2024-06-28',
      'name': 'Sara',
      'price': '40',
      'ingredients': 'Pasta, Tomato, Cheese'
    },
    {
      'date': '2024-06-27',
      'name': 'John',
      'price': '60',
      'ingredients': 'Beef, Potatoes, Carrots'
    },
    {
      'date': '2024-06-26',
      'name': 'Emma',
      'price': '45',
      'ingredients': 'Fish, Lemon, Garlic'
    },
    {
      'date': '2024-06-25',
      'name': 'Michael',
      'price': '55',
      'ingredients': 'Lamb, Mint, Yogurt'
    },
    {
      'date': '2024-06-24',
      'name': 'Olivia',
      'price': '35',
      'ingredients': 'Salad, Lettuce, Tomatoes'
    },
    {
      'date': '2024-06-23',
      'name': 'Sophia',
      'price': '50',
      'ingredients': 'Pizza, Cheese, Pepperoni'
    },
    {
      'date': '2024-06-22',
      'name': 'Liam',
      'price': '65',
      'ingredients': 'Steak, Mushrooms, Onions'
    },
    {
      'date': '2024-06-21',
      'name': 'Noah',
      'price': '30',
      'ingredients': 'Burger, Lettuce, Tomato'
    },
    {
      'date': '2024-06-20',
      'name': 'Ava',
      'price': '25',
      'ingredients': 'Soup, Carrots, Chicken'
    },
  ];

  DiningArea({super.key});

  void _confirmOrder(BuildContext context, String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: Text('Order for $name has been confirmed.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
          const Padding(
            padding: EdgeInsets.only(left: 85, right: 4, top: 60, bottom: 2),
            child: Text(
              'Hi Ayman',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(order['name']!),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date: ${order['date']}'),
                        Text('Price: \$${order['price']}'),
                        Text('Ingredients: ${order['ingredients']}'),
                      ],
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        _confirmOrder(context, order['name']!);
                      },
                      child: const Text('Confirm'),
                    ),
                  ),
                );
              },
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
                      MaterialPageRoute(builder: (context) => const Scan()),
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
                    'SCAN',
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
                left: 160,
                right: 40,
                top: 170,
                bottom: 20), // Add padding to all sides of the Text widget
            child: Text(
              'Meals',
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
