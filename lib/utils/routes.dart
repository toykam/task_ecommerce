

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/frontend/screens/nav_screen/nav_screen.dart';
import 'package:task/frontend/screens/status_screen/page_not_found.dart';
import 'package:task/utils/constants/routes.dart';

class RouteGenerator {

  static Route onGenerateRoute(RouteSettings settings) {

    var name = settings.name;
    var arguments = settings.arguments;

    switch (name) {
      case NAV_SCREEN_ROUTE:
        return MaterialPageRoute(builder: (context) => TaskNavScreen(),);
      default:
        return MaterialPageRoute(builder: (context) => PageNotFound());
    }
  }
}