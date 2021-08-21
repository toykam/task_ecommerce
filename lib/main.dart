import 'package:flutter/material.dart';
import 'package:task/utils/constants/routes.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryColor,
        backgroundColor: backgroundColor,
      ),
      initialRoute: INITIAL_ROUTE,
      onGenerateRoute: (settings) => RouteGenerator.onGenerateRoute(settings),
    );
  }
}
