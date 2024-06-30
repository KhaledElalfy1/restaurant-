import 'package:aast_restuarant/keys/fire_store_keys.dart';

class CommentModel {
  final int rating;
  final String comment;
  final String docId;
  CommentModel({
    required this.rating,
    required this.comment,
    required this.docId,
  });

  factory CommentModel.fromFirebase(Map<String, dynamic> doc, id) {
    return CommentModel(
      rating: doc[FireStoreKeys.rating],
      comment: doc[FireStoreKeys.comments],
      docId: id,
    );
  }
}
