import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/utils/constants/constants.dart';
import 'package:task/utils/styles/colors.dart';
import 'package:task/utils/styles/spacing.dart';

class PopularCategoryScreen extends StatelessWidget {
  const PopularCategoryScreen({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(3, (index) => Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Column(
                    children: [
                      Container(child: Center(child: Image.asset('assets/images/products/ee41cd4a81f9b753828ec975cfdd3cdc.png', height: 140,))),
                    ],
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 4,),
          Text("$category", style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}


class PopularCategoriesScreen extends StatelessWidget {
  const PopularCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
            child: Text("Popular Categories", style: TextStyle(
                color: MaterialColor(0xFF151716, color),
                fontSize: 16, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
            child: PopularCategoryScreen(category: 'Electronics',),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
            child: PopularCategoryScreen(category: 'Beauty & Health',),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
            child: PopularCategoryScreen(category: 'Phone & Tablet',),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
            child: PopularCategoryScreen(category: 'Phone Accessories',),
          ),
        ],
      ),
    );
  }
}

