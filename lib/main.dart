import 'package:aast_restuarant/features/comments/presentation/delete_comment_cubit/delete_comment_cubit.dart';
import 'package:aast_restuarant/features/comments/presentation/show_comments_cubit/show_comments_cubit.dart';
import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/dean_announcement_cubit_cubit/dean_announcement_cubit.dart';
import 'package:aast_restuarant/features/feed_back/presentation/controller/feed_back_cubit/feed_back_cubit.dart';
import 'package:aast_restuarant/features/login/presentation/controller/login_cubit/login_cubit.dart';
import 'package:aast_restuarant/features/login/presentation/view/login_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:aast_restuarant/Splash_Animated.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => FeedBackCubit(),
        ),
        BlocProvider(
          create: (context) => ShowCommentsCubit()..getStudentComments(),
        ),
        BlocProvider(
          create: (context) => DeleteCommentCubit(),
        ),
        BlocProvider(
          create: (context) => DeanAnnouncementCubit()..getAnnouncement(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash_Animated(
          title: 'login',
          home: LoginView(),
        ),
      ),
    );
  }
}
