
import 'package:aast_restuarant/features/login/presentation/view/login_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Animated extends StatelessWidget {
  const Splash_Animated(
      {super.key, required String title, required Widget home});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 200,
        backgroundColor: Colors.indigo.shade900,
        pageTransitionType: PageTransitionType.topToBottom,
        splash: const CircleAvatar(
          radius: 120,
          backgroundImage: AssetImage("images/splash.png"),
          backgroundColor: Color(0xFF1A237E),
        ),
        nextScreen:const LoginView(),

// we can use
        duration: 2000,
//5000= 5 Second

//control the duration of the image , we can use
        animationDuration: const Duration(seconds: 2));
//small number : the duration will be speed
//large number : the duratiion will be slow);
  }
}
