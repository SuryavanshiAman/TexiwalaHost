import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';


class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Performance', style: robotoBlackProfile),
        ),
      ),
      body: Container(
        height: height * 0.8,
        color: ColorConstant.WHITE_BACKGROUND,
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Container(
              child: Center(child: Text('June', style: robotoBold)),
            ),
            SizedBox(height: height * 0.02),
            Container(
              height: height * 0.1,
              width: width * 4.8,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                        color: ColorConstant.WHITE_COL0R,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Wed', style: robotoBold),
                          Text('14', style: robotoRegularBlack),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: height*0.09,
                  width: width*0.87,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Total amount earned', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Number of rides', style: robotoMediumBlack),
                          Text('4',style: robotoMediumBlack,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: height*0.21,
                  width: width*0.87,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Earnings', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Incentives earned', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Total earning', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Commission paid', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.02),
            Container(
              height: height*0.07,
              width: width*0.9,
              decoration: BoxDecoration(
                color: ColorConstant.Green_BACKGROUND,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                children: [
                  Text('    Total amount earned        ',style: robotoMediumExtraWhite,),
                  Text('₹4000.00',style: robotoMediumExtraWhite,)
                ],
              ),
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('View  ',style: robotoBlack,),
                Text('Ride description',style: robotoBold.copyWith(decoration:TextDecoration.underline),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
