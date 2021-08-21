import 'package:flutter/material.dart';
import 'package:task/frontend/screens/home_page/home_page_screen.dart';
import 'package:task/frontend/screens/nav_screen/nav_bar.dart';

class TaskNavScreen extends StatefulWidget {
  const TaskNavScreen({Key? key}) : super(key: key);

  @override
  _TaskNavScreenState createState() => _TaskNavScreenState();
}

class _TaskNavScreenState extends State<TaskNavScreen> {

  int currentTab = 0;

  void onChangeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePageScreen(),
      HomePageScreen(),
      HomePageScreen(),
      HomePageScreen(),
    ];
    return Scaffold(
      body: pages[currentTab],
      bottomNavigationBar: TaskNavigationBar(
        onChange: onChangeTab,
      ),
    );
  }
}
