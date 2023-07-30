import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tic_tac_toe_example/ui/application/home_page/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tic_tac_toe_example/utilities/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.homepage_screen,
        (_) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffFFFFFF),
      child: Image.asset(
        'assets/images/launcher/launcher.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
