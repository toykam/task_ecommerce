import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class TaskNavigationBar extends StatelessWidget {
  const TaskNavigationBar({Key? key, this.active = 0, required this.onChange}) : super(key: key);
  final Function onChange;
  final active;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: active,
      onTap: (int index) => print(index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconlyBold.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(IconlyLight.category),
            label: 'Categories'
        ),
        BottomNavigationBarItem(
            icon: Icon(IconlyLight.chat),
            label: 'Chat'
        ),
        BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            label: 'Account'
        ),
      ],
    );
  }
}
