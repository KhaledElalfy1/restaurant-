import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/cubit/dean_announcement_state.dart';
import 'package:aast_restuarant/keys/fire_store_keys.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeanAnnouncementCubit extends Cubit<DeanAnnouncementState> {
  DeanAnnouncementCubit() : super(DeanAnnouncementInitial());
  static DeanAnnouncementCubit get(context) => BlocProvider.of(context);
  TextEditingController announcementController = TextEditingController();
  CollectionReference announcement = FirebaseFirestore.instance
      .collection(FireStoreKeys.announcementCollection);
  @override
  Future<void> close() {
    announcementController.dispose();
    return super.close();
  }

  void makeAnnouncement() {
    emit(DeanAnnouncementLoading());
    announcement.add(
      {
        FireStoreKeys.studentName: 'Dean',
        FireStoreKeys.comments: announcementController.text,
        FireStoreKeys.createdAt: DateTime.now(),
      },
    ).then((value) {
      emit(DeanAnnouncementSuccess());
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
}
