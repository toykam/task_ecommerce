import 'package:flutter/material.dart';
import 'package:task/utils/constants/constants.dart';
import 'package:task/utils/dummy_data/brands.dart';
import 'package:task/utils/styles/colors.dart';
import 'package:task/utils/styles/spacing.dart';

class RecommendedForYouScreen extends StatelessWidget {
  const RecommendedForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PAGE_HORIZONTAL_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Recommended for you", style: TextStyle(
              color: MaterialColor(0xFF151716, color),
              fontSize: 16, fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 8,),
          GridView.builder(
            shrinkWrap: true, primary: false,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8, mainAxisExtent: 230
          ), itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/products/ee41cd4a81f9b753828ec975cfdd3cdc-5.png'),
                      Positioned(
                        top: 10, left: 5,
                        child: Text('10% off'),
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  Text("Product long name goes here", style: TextStyle(
                  ), overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 8,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${CURRENCY_SYMBOL}3,400', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700
                        ),),



                        Text('${CURRENCY_SYMBOL}3,400', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough, color: Color(0xFF959595)
                        )),
                      ],
                    ),
                  )
                ],
              ),
            );
          },)
        ],
      ),
    );
  }
}
