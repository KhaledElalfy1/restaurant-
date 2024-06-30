import 'package:aast_restuarant/features/comments/presentation/delete_comment_cubit/delete_comment_cubit.dart';
import 'package:aast_restuarant/features/comments/presentation/delete_comment_cubit/delete_comment_state.dart';
import 'package:aast_restuarant/features/comments/presentation/show_comments_cubit/show_comments_cubit.dart';
import 'package:aast_restuarant/features/feed_back/model/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';

class CustomCommentCard extends StatelessWidget {
  const CustomCommentCard({super.key, required this.comment});
  final CommentModel comment;
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
              BlocConsumer<DeleteCommentCubit, DeleteCommentState>(
                listener: (context, state) {
                  if (state is DeleteCommentSuccess) {
                    ShowCommentsCubit.get(context).getStudentComments();
                  } else if (state is DeleteCommentFailure) {
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.error,
                      text: state.eMessage,
                    );
                  }
                },
                builder: (context, state) {
                  return IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      DeleteCommentCubit.get(context)
                          .deleteComment(docID: comment.docId);
                    },
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
                comment.studentName,
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
                  child: Text('Date: ${comment.createdAt}'),
                ),
                const SizedBox(height: 4.0),
                Transform.translate(
                  offset: const Offset(-7, -0),
                  child: Text(
                    comment.comment,
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
