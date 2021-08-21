import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/frontend/screens/home_page/bill_board.dart';
import 'package:task/frontend/screens/home_page/flash_sale_screen.dart';
import 'package:task/frontend/screens/home_page/popular_categories.dart';
import 'package:task/frontend/screens/home_page/recommended_for_you.dart';
import 'package:task/frontend/screens/home_page/top_brands.dart';
import 'package:task/frontend/screens/home_page/top_selling.dart';
import 'package:task/utils/styles/colors.dart';
import 'package:task/utils/styles/spacing.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100000)),
                        border: Border.all(
                          color: MaterialColor(0xFFB4B4B4, color)
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search for a product',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none)
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16)
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: Icon(IconlyLight.search, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 35,),
                  Stack(
                    children: [
                      Icon(IconlyLight.bag, size: 38,),
                      Positioned(
                        top: 5, right: 3,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: MaterialColor(0xFFFF5700, color),
                          child: Text('15', style: TextStyle(
                            fontSize: 8, color: Colors.white
                          ),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 8,),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      HomePageBillBoard(),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
                        child: HomePageTopSellingScreen(),
                      ),
                      SizedBox(height: 16,),
                      PopularCategoriesScreen(),
                      SizedBox(height: 16,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
                        child: HomePageFlashSaleScreen()
                      ),
                      SizedBox(height: 16,),
                      TopBrandsScreen(),
                      SizedBox(height: 16,),
                      RecommendedForYouScreen(),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
