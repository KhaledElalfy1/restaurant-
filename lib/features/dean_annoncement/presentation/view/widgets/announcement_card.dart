import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/dean_announcement_cubit_cubit/dean_announcement_cubit.dart';
import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/dean_announcement_cubit_cubit/dean_announcement_state.dart';
import 'package:aast_restuarant/features/feed_back/model/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key, required this.announcement});
  final CommentModel announcement;
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
              BlocConsumer<DeanAnnouncementCubit, DeanAnnouncementState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {},
                  );
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
              child: Text(
                announcement.studentName,
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
                  child: Text('Date: ${announcement.createdAt}'),
                ),
                const SizedBox(height: 4.0),
                Transform.translate(
                  offset: const Offset(-7, -0),
                  child: Text(
                    announcement.comment,
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
