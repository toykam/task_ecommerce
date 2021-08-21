import 'package:flutter/material.dart';
import 'package:task/utils/dummy_data/brands.dart';
import 'package:task/utils/styles/colors.dart';
import 'package:task/utils/styles/spacing.dart';

class TopBrandsScreen extends StatelessWidget {
  const TopBrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Top Brands", style: TextStyle(
            color: MaterialColor(0xFF151716, color),
            fontSize: 16, fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 8,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...brands.map((e) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("${e.brandImagePath}", height: 40, width: 115,),
                      SizedBox(height: 5,),
                      Image.asset("assets/images/products/ee41cd4a81f9b753828ec975cfdd3cdc-5.png", height: 40, width: 115,),
                    ],
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
