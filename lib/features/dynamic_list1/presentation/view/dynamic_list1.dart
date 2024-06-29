import 'package:flutter/material.dart';

class DynamicListExample extends StatefulWidget {
  const DynamicListExample({super.key});

  @override
  _DynamicListExampleState createState() => _DynamicListExampleState();
}

class _DynamicListExampleState extends State<DynamicListExample> {
  //item 1
  List<String> items1 = [
    'BreakFast',
  ];

  List<String> subitems1 = [
    'Subitem A',
  ];
  List<String> subitems2 = [
    'Subitem B',
  ];
  List<String> subitems3 = [
    'Subitem C',
  ];
  // item 2
  List<String> items2 = [
    'Launch',
  ];

  List<String> subitems21 = [
    'Subitem A',
  ];
  List<String> subitems22 = [
    'Subitem B',
  ];
  List<String> subitems23 = [
    'Subitem C',
  ];
  List<String> items3 = [
    'Dinner',
  ];

  List<String> subitems31 = [
    'Subitem A',
  ];
  List<String> subitems32 = [
    'Subitem B',
  ];
  List<String> subitems33 = [
    'Subitem C',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5,
                right: 4,
                top: 260,
                bottom: 2), // Adjust desired padding
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(
                            vertical: 15), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items1[index],
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems1[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems2[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems3[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(
                            vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items2[index],
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems21[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems22[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems23[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items3.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,

                        margin: const EdgeInsets.symmetric(
                            vertical: 1), // Adjust vertical margin
                        child: ExpansionTile(
                          title: Text(
                            items3[index],
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                subitems31[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems32[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            ListTile(
                              title: Text(
                                subitems33[index],
                                style: TextStyle(color: Colors.indigo.shade900),
                              ),
                              onTap: () {
                                // Handle subitem tap
                              },
                            ),
                            // Add more subitems as needed
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Opacity(
                        opacity:
                            0.0, // Adjust opacity value between 0.0 (transparent) and 1.0 (opaque)
                        child: Card(
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(
                              vertical: 15), // Adjust vertical margin
                          child: ExpansionTile(
                            title: Text(
                              items1[index],
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  subitems1[index],
                                  style:
                                      TextStyle(color: Colors.indigo.shade900),
                                ),
                                onTap: () {
                                  // Handle subitem tap
                                },
                              ),
                              // ... other list items
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Add your new list here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
