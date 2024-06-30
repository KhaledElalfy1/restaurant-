import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  final int rating;
  final String comment;
  final String studentName;
  final DateTime createdAt;
  final String docId;
  CommentModel({
    required this.rating,
    required this.comment,
    required this.studentName,
    required this.docId,
    required this.createdAt,
  });

  factory CommentModel.fromFirebase(Map<String, dynamic> doc, id) {
    return CommentModel(
      rating: doc[FireStoreKeys.rating],
      comment: doc[FireStoreKeys.comments],
      studentName: doc[FireStoreKeys.studentName],
      createdAt:(doc[FireStoreKeys.createdAt] as Timestamp).toDate() ,
      docId: id,
    );
  }
}
