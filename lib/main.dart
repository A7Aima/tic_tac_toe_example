import 'package:flutter/material.dart';
import 'package:tic_tac_toe_example/initial_pages/splash_screen/splash_screen.dart';
import 'package:tic_tac_toe_example/utilities/routes/routes.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  TicTacToeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) => Routes.animateRoutes(settings),
    );
  }
}
