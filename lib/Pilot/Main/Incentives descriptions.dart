import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Incentivesdescriptions extends StatefulWidget {
  const Incentivesdescriptions({super.key});

  @override
  State<Incentivesdescriptions> createState() => _IncentivesdescriptionsState();
}

class _IncentivesdescriptionsState extends State<Incentivesdescriptions> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size(0,height*0.19),
            child: Column(
              children: [
              Container(
              height: height*0.2,
              color: ColorConstant.WHITE_COL0R,
              child: Column(
                children: [
                  SizedBox(height: height*0.04,),
                  Text('Earn an extra ₹2000\nfor 5 booking',style: robotoBlackProfile,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('       Today',style: robotoBold,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height*0.04,
                          width: width*0.4,
                          decoration: BoxDecoration(
                            color: ColorConstant.WHITE_BACKGROUND,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(child: Text('12:00AM-11:59PM',style:robotoBold,)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
              Container(
                height: height*0.06,
                color: ColorConstant.Green_BACKGROUND,
                child: Row(
                  children: [
                    Text('   Total earnings',style: robotoMediumExtraWhite,),
                    SizedBox(width: width*0.37,),
                    Text('₹2000',style: robotoMediumExtraWhite,),
                    Icon(Icons.arrow_forward,color: ColorConstant.WHITE_COL0R,),
                  ],
                ),
              ),
            ]
        ),
      ),
      ),
        body: ListView(
              children: [
                Container(
                  height: height*01.1,
                  color: ColorConstant.WHITE_BACKGROUND,
                  child: Column(
                    children: [
                      SizedBox(height: height*0.03,),
                      Padding(
                        padding:EdgeInsets.only(right: width*0.67),
                        child: Text('Incentives',style: robotoBold,),
                      ),
                      SizedBox(height: height*0.03,),
                      Container(
                        height: height*0.13,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: ColorConstant.WHITE_COL0R,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height*0.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('   Earn an extra ₹2000 for\n   5 booking',style: robotoBold,),
                              Text('1/5 booking   ',style: robotoBlack,),
                            ],
                          ),
                        SizedBox(height: height*0.02,),
                        Container(
                          width: 240.0,
                          child: LinearProgressIndicator(
                            value: 0.7, // Change the value between 0.0 to 1.0 for different progress
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.Black_COLOR),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                        height: height*0.13,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: ColorConstant.WHITE_COL0R,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height*0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('   Earn an extra ₹2000 for\n   5 booking',style: robotoBold,),
                                Text('1/5 booking   ',style: robotoBlack,),
                              ],
                            ),
                            SizedBox(height: height*0.02,),
                            Container(
                              width: 240.0,
                              child: LinearProgressIndicator(
                                value: 0.5, // Change the value between 0.0 to 1.0 for different progress
                                backgroundColor: Colors.grey[300],
                                valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.Black_COLOR),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Padding(
                        padding:EdgeInsets.only(right:width*0.35),
                        child: Text('Things to keep in mind',style: robotoMediumBlack,),
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                        height: height*0.27,
                        width: width*0.9,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('•   ',style: robotoBlackProfile,),
                            Text('You agree to return the car to us in the\nsame condition you received it, ordinary\nwear and tear excepted, or the date, at the\ntime and to the location specified in the\nRental Contract. The car must be returned\nto the agreed return location as specified\non the Rental Contract. If return is indicated\nto a location other than the location where\nyourrental commences, you may have to\npay a one way service fee',style: robotoBlack,)
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        height: height*0.3,
                        width: width*0.9,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('•   ',style: robotoBlackProfile,),
                            Text('You agree to return the car to us in the\nsame condition you received it, ordinary\nwear and tear excepted, or the date, at the\ntime and to the location specified in the\nRental Contract. The car must be returned\nto the agreed return location as specified\non the Rental Contract. If return is indicated\nto a location other than the location where\nyourrental commences, you may have to\npay a one way service fee',style: robotoBlack,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
