import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toe_example/initial_pages/splash_screen/splash_screen.dart';
import 'package:tic_tac_toe_example/utilities/constants/app_theme/app_theme.dart';
import 'package:tic_tac_toe_example/utilities/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0x44000000),
    statusBarBrightness: Brightness.light,
    // statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(TicTacToeApp());
  });
}

class TicTacToeApp extends StatelessWidget {
  TicTacToeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: SplashScreen(),
      onGenerateRoute: (settings) => Routes.animateRoutes(settings),
    );
  }
}
