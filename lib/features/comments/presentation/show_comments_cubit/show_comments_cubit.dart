import 'package:aast_restuarant/features/comments/presentation/show_comments_cubit/show_comments_state.dart';
import 'package:aast_restuarant/features/feed_back/model/comment_model.dart';
import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowCommentsCubit extends Cubit<ShowCommentsState> {
  ShowCommentsCubit() : super(ShowCommentsInitial());
  List<CommentModel> studentComments = [];
  static ShowCommentsCubit get(context) => BlocProvider.of(context);

  void getStudentComments() async {
    emit(ShowCommentsLoading());
    final data = await FirebaseFirestore.instance
        .collection(FireStoreKeys.commentsCollection)
        .get();
    try {
      studentComments = [];
      for (var doc in data.docs) {
        studentComments.add(
          CommentModel.fromFirebase(doc.data(), doc.id),
        );
      }
      emit(ShowCommentsSuccess());
    } catch (e) {
      emit(
        ShowCommentsFailure(
          eMessage: e.toString(),
        ),
      );
    }
  }
}
