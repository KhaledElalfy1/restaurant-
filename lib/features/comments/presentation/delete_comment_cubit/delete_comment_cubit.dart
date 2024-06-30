import 'package:aast_restuarant/features/comments/presentation/delete_comment_cubit/delete_comment_state.dart';
import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteCommentCubit extends Cubit<DeleteCommentState> {
  DeleteCommentCubit() : super(DeleteCommentInitial());
  static DeleteCommentCubit get(context) => BlocProvider.of(context);
  void deleteComment({required String docID}) {
    emit(DeleteCommentLoading());
    CollectionReference comments =
        FirebaseFirestore.instance.collection(FireStoreKeys.commentsCollection);
    comments.doc(docID).delete().then(
      (value) {
        emit(
          DeleteCommentSuccess(),
        );
      },
    ).catchError(
      (e) {
        emit(
          DeleteCommentFailure(
            eMessage: e.toString(),
          ),
        );
      },
    );
  }
}
