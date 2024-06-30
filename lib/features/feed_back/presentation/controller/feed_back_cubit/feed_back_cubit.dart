import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feed_back_state.dart';

class FeedBackCubit extends Cubit<FeedBackState> {
  FeedBackCubit() : super(FeedBackInitial());
  static FeedBackCubit get(context) => BlocProvider.of(context);
  int rating = 3;
  TextEditingController commentController = TextEditingController();

  CollectionReference comments =
      FirebaseFirestore.instance.collection(FireStoreKeys.commentsCollection);

  @override
  Future<void> close() {
    commentController.dispose();
    return super.close();
  }

  Future<void> addComment() async {
    emit(SendFeedBackLoading());
    comments.add({
      FireStoreKeys.rating: rating,
      FireStoreKeys.comments: commentController.text,
      FireStoreKeys.studentName: FirebaseAuth.instance.currentUser!.displayName,
    }).then((value) {
      emit(SendFeedBackSuccess());
    }).catchError((e) {
      emit(
        SendFeedBackFailure(
          eMessage: e.toString(),
        ),
      );
    });
  }
}
