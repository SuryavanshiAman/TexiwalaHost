import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Dashpages extends StatefulWidget {
  const Dashpages({super.key});

  @override
  State<Dashpages> createState() => _DashpagesState();
}

class _DashpagesState extends State<Dashpages> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height*0.1,
            color: ColorConstant.WHITE_COL0R,
            child: Center(child: Text('Dashboard',style: robotoBlackProfile,)),
          ),
          Container(
            height: height*0.820,
            width: width*1.0,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                Container(
                  height: height*0.15,
                  width: width*0.87,
                  decoration: BoxDecoration(
                    color: ColorConstant.Green_BACKGROUND,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.02,),
                      Text('Today,29th mar 2023',style: robotoMediumWhite,),
                      SizedBox(height: height*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('                   ₹4000',style: robotoWhite,),
                          Icon(Icons.arrow_forward,color: ColorConstant.WHITE_COL0R,),
                        ],
                      ),
                      SizedBox(height: height*0.01,),
                      Text('1 Ride completeted',style: robotoMediumWhite,)
                    ],
                  ),
                ),
                    SizedBox(height: height*0.02,),
                    Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                         child: Padding(
                        padding: const EdgeInsets.all(15),
                           child: Column(
                             children: [
                               Text('You have negative balance,repay\nthe payment',style: robotoMediumBlack,),
                               SizedBox(height: height*0.02,width: width*0.9,),
                               Container(
                                 height: height*0.05,
                                 width: width*0.4,
                                 decoration: BoxDecoration(
                                   color: ColorConstant.Black_COLOR,
                                   borderRadius: BorderRadius.all(Radius.circular(10)),
                                 ),
                                 child: Center(child: Text('Pay ₹4000',style: robotoMediumExtraWhite,)),
                               ),
                             ],
                           ),
                  )
                    ),
                        Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  No balance to be paid today',style: robotoMediumBlack,),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child:Container(
                        height: height*0.15,
                        width: width*0.9,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('  Balance',style: robotoMediumBlack,),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('  Earning History',style: robotoMediumBlack,),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('  Incentives',style: robotoMediumBlack,),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
