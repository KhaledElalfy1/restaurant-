import 'package:flutter/material.dart';

class CustomCommentCard extends StatelessWidget {
  const CustomCommentCard({
    super.key,
    required this.author,
    required this.comment,
    required this.delete,
  });
  final String author, comment;
  final VoidCallback delete;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.only(left: 10, right: 14, bottom: 10),
      color: Colors.blue[50],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: delete,
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
              child: Text(
                author,
                style: const TextStyle(
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
                  child: Text(
                    comment,
                    style: const TextStyle(
                      fontSize: 16,
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
