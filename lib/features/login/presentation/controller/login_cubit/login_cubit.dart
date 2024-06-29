import 'package:aast_restuarant/features/login/presentation/controller/login_cubit/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  void signUp() async {
    emit(LoginLoading());

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "Ayd124762@gmail.com",
        password: '12345678',
      );
      emit(LoginSuccess());
      print('Success================================');
      await FirebaseAuth.instance.currentUser!
          .updateDisplayName("Abdelbaky Mahmoud");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void login() async {
    emit(LoginLoading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(eMessage: 'No user found for that email.'));
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(eMessage: 'Wrong password provided for that user.'));
        debugPrint('Wrong password provided for that user.');
      }else {
        emit(LoginFailure(eMessage: 'An error occurred: ${e.message}'));
        debugPrint('An error occurred: ${e.message}');
      }
    }
  }
}
