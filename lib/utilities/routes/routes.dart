import 'package:flutter/material.dart';
import 'package:tic_tac_toe_example/initial_pages/login_screen/login_screen.dart';
import 'package:tic_tac_toe_example/initial_pages/splash_screen/splash_screen.dart';
import 'package:tic_tac_toe_example/ui/home_page/home_page.dart';
import 'package:tic_tac_toe_example/ui/tic_tac_toe_screen/tic_tac_toe_screen.dart';

class Routes {
  Routes._();

  static const String login_screen = "/login_screen";
  static const String homepage_screen = "/homepage_screen";
  static const String tic_tac_toe_screen = "/tic_tac_toe_screen";

  static final List<Map<String, dynamic>> _routeList = [
    {
      "name": login_screen,
      "screen": LoginScreen(),
    },
    {
      "name": homepage_screen,
      "screen": HomePageScreen(),
    },
    {
      "name": tic_tac_toe_screen,
      "screen": TicTacToeScreen(),
    },
  ];

  static Route animateRoutes(RouteSettings routeSettings) {
    Route routeDetail = defaultRoute;
    for (Map<String, dynamic> routes in _routeList) {
      if (routeSettings.name == routes["name"]) {
        routeDetail = MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => routes["screen"],
        );
        break;
      }
    }
    return routeDetail;
  }

  static final defaultRoute = MaterialPageRoute(
    builder: (_) => SplashScreen(),
  );
}
