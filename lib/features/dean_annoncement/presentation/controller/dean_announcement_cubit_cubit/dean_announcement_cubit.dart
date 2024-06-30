import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/dean_announcement_cubit_cubit/dean_announcement_state.dart';
import 'package:aast_restuarant/features/feed_back/model/comment_model.dart';
import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeanAnnouncementCubit extends Cubit<DeanAnnouncementState> {
  DeanAnnouncementCubit() : super(DeanAnnouncementInitial());
  static DeanAnnouncementCubit get(context) => BlocProvider.of(context);
  TextEditingController announcementController = TextEditingController();
  List<CommentModel> deanAnnouncement = [];
  CollectionReference announcement = FirebaseFirestore.instance
      .collection(FireStoreKeys.announcementCollection);
  @override
  Future<void> close() {
    announcementController.dispose();
    return super.close();
  }

  void makeAnnouncement({required String author}) {
    emit(DeanAnnouncementLoading());
    announcement.add(
      {
        FireStoreKeys.studentName: author,
        FireStoreKeys.comments: announcementController.text,
        FireStoreKeys.createdAt: DateTime.now(),
        FireStoreKeys.rating: 0
      },
    ).then((value) {
      emit(DeanAnnouncementSuccess());
      print('====================Success===================');
      getAnnouncement();
    }).catchError(
      (e) {
        emit(
          DeanAnnouncementFailure(
            eMessage: e.toString(),
          ),
        );
      },
    );
  }

  void getAnnouncement() async {
    emit(GetDeanAnnouncementLoading());
    try {
      final data = await FirebaseFirestore.instance
          .collection(FireStoreKeys.announcementCollection)
          .get();
      deanAnnouncement = [];
      for (var doc in data.docs) {
        deanAnnouncement.add(
          CommentModel.fromFirebase(doc.data(), doc.id),
        );
      }
      emit(GetDeanAnnouncementSuccess());
    } on Exception catch (e) {
      emit(
        GetDeanAnnouncementFailure(
          eMessage: e.toString(),
        ),
      );
    }
  }
}
