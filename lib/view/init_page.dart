import 'package:disney_app/ui_classes/colors.dart';
import 'package:disney_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 500,
      splash: 'assets/logos/logo.png',
      nextScreen: const Home(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: ColorsApp.blue,
      splashIconSize: 600,
    );
  }
}
