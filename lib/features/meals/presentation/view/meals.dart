
import 'package:aast_restuarant/features/dynamic_list2/presentation/view/dynamic_list2.dart';
import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            child: const DynamicListExample2(),
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
          Container(
            margin:
                const EdgeInsets.only(left: 320, right: 20, top: 50, bottom: 2),
            padding:
                const EdgeInsets.only(left: 2, right: 4, top: 4, bottom: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Transform.scale(
                scale: 1.5,
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
              'Hi Ayman ',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
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
        ],
      ),
    );
  }
}
