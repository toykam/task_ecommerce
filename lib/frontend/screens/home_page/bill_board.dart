import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/utils/styles/colors.dart';
import 'package:task/utils/styles/spacing.dart';

class HomePageBillBoard extends StatefulWidget {
  const HomePageBillBoard({Key? key}) : super(key: key);

  @override
  _HomePageBillBoardState createState() => _HomePageBillBoardState();
}

class _HomePageBillBoardState extends State<HomePageBillBoard> {
  int currentBanner = 0;

  void changeCurrentBanner(int index) {
    setState(() {
      currentBanner = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int index) => changeCurrentBanner(index),
            itemCount: 5,
            itemBuilder: (context, index) => Image.asset('assets/images/banners/2de9476912a17d9d16f5efdf0c2147d7.png'),
          ),
          Positioned(
            bottom: 20,
            left: 0, right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(5, (index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10000))
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.symmetric(horizontal: .5),
                  child: CircleAvatar(
                    backgroundColor: index == currentBanner ? bannerIndicatorColorStyle['enabled'] : bannerIndicatorColorStyle['disabled'], radius: 5,
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
