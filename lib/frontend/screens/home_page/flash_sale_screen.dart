import 'package:flutter/material.dart';
import 'package:task/utils/constants/constants.dart';

class HomePageFlashSaleScreen extends StatelessWidget {
  const HomePageFlashSaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("Flash Sales", style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold
                ),),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildTimeLapsWidget(24),
                      SizedBox(width: 4,),
                      Text(":", style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w900
                      ),),
                      buildTimeLapsWidget(34),
                      SizedBox(width: 4,),
                      Text(":", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w900
                      ),),
                      buildTimeLapsWidget(58),
                      SizedBox(width: 4,),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 11,),
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

                            Text('${CURRENCY_SYMBOL}3,400', style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700,
                              decoration: TextDecoration.lineThrough, color: Color(0xFF959595)
                            )),
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

Widget buildTimeLapsWidget(timeLapse) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
    decoration: BoxDecoration(
        color: Color(0xFF151716),
        borderRadius: BorderRadius.all(Radius.circular(4))
    ),
    child: Text('$timeLapse', style: TextStyle(
        color: Colors.white
    ),),
  );
}
