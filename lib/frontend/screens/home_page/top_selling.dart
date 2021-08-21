import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/utils/constants/constants.dart';
import 'package:task/utils/styles/colors.dart';

class HomePageTopSellingScreen extends StatelessWidget {
  const HomePageTopSellingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Selling", style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(4, (index) => Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Column(
                    children: [
                      Container(child: Center(child: Image.asset('assets/images/products/ee41cd4a81f9b753828ec975cfdd3cdc.png', height: 140,))),
                      SizedBox(height: 11,),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${CURRENCY_SYMBOL}3,400', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700
                            ),),

                            Flexible(
                              flex: 1,
                              child: Container(width: 10,),
                              fit: FlexFit.loose,
                            ),

                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_upward, size: 12,),
                                  SizedBox(width: 4,),
                                  Text('Top', style: TextStyle(
                                    fontSize: 14
                                  ),)
                                ],
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 4, horizontal: 10)),
                                backgroundColor: MaterialStateProperty.all(MaterialColor(0xFF1A93F6, color)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(1000))
                                ))
                              ),
                            )
                          ],
                        ),
                      )
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
