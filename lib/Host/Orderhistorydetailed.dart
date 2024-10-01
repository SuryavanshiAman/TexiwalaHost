// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Orderhistorydetailed extends StatefulWidget {
  const Orderhistorydetailed({super.key});

  @override
  State<Orderhistorydetailed> createState() => _OrderhistorydetailedState();
}

class _OrderhistorydetailedState extends State<Orderhistorydetailed> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('My rides',style: robotoBlackProfile),),
      ),
      body: ListView(
        children: [
          Container(
            height: height*1.3,
            width: MediaQuery.of(context).size.width,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(

              children: [
                SizedBox(height:height*0.03),
                SizedBox(
                  height: height*0.15,
                  width: width*0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height*0.03,
                        width:width*0.9,
                        child: Row(
                          children: [
                            const Text('Category',style: robotoMediumBlack),
                            Padding(
                              padding: EdgeInsets.only(left:height*0.27),
                              child: const Text('Car',style: robotoBlack,),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[600]),
                      SizedBox(
                        height: height*0.03,
                        width:width*0.9,
                        child: Row(
                          children: [
                            const Text('Date of Ride',style: robotoMediumBlack),
                            Padding(
                              padding: EdgeInsets.only(left: height*0.06),
                              child: const Text('21/04/2023 | 7 days ago',style: robotoBlack,),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[600]),
                      SizedBox(
                        height: height*0.025,
                        width:width*0.9,
                        child: Row(
                          children: [
                            const Text('Ride ID',style: robotoMediumBlack),
                            Padding(
                              padding: EdgeInsets.only(left: height*0.12),
                              child: const Text('RD16883064337054047',style: robotoBlack,),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[600]),
                    ],
                  ),
                ),
                SizedBox(height: height*0.015),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height:height*0.15,
                    width: width*0.85,
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:height*0.02),
                          child: SizedBox(
                            height:height*0.15,
                            width: width*0.15,
                            child: Container(
                              height: height*0.06,
                              width: width*0.06,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstant.Black_COLOR
                              ),
                              child: const Icon(Icons.person,color: ColorConstant.WHITE_COL0R,size: 35,),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height*0.15,
                          width: width*0.5,
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: height*0.02),
                                child: SizedBox(
                                  height: height*0.06,
                                  child: Center(
                                    child: RichText(
                                      text: const TextSpan(
                                        text: "Senthil Kumar R\n",
                                        style:   robotoMediumBlack,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '       your ratings',
                                            style:robotoBlack,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height*0.05,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: width*0.4,
                                        child: const Center(
                                          child: Text(
                                            '★★★☆☆',style: TextStyle(color: Colors.amber,fontSize: 25),
                                          ),
                                        )
                                    ),
                                    SizedBox(
                                        width: width*0.08,
                                        child: const Center(
                                          child: Text(
                                            '3/5',style: robotoBlack,
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.02,),
                SizedBox(
                  height: height*0.08,
                  width: width*0.85,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height*0.025,
                        width: width*0.85,
                        child: Row(
                          children: [
                            const Text('Fare',style: robotoMediumBlack),
                            Padding(
                              padding: EdgeInsets.only(left: width*0.58),
                              child: const Text('₹14,000',style: robotoBlack,),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[600],),
                      SizedBox(
                        height: height*0.03,
                        width: width*0.85,
                        child: Row(
                          children: [
                            const Text('Mode of Payment',style: robotoMediumBlack),
                            Padding(
                              padding: EdgeInsets.only(left:width*0.33),
                              child: const Text('Card',style: robotoBlack,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height*0.17,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: ColorConstant.WHITE_COL0R,
                        child:SizedBox(
                          height: height*0.13,
                          width: width*0.45,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: "  273 Km",
                                style:   robotoBlackProfile,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text:"\n\nDistance Covered",
                                    style:robotoBlack,

                                  ),

                                ],
                              ),

                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: ColorConstant.WHITE_COL0R,
                        child:SizedBox(
                          height: height*0.13,
                          width: width*0.45,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: "18:58:12\n",
                                style:   robotoBlackProfile,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text:"\n        Time",
                                    style:robotoBlack,

                                  ),

                                ],
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:height*0.01),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height: height*0.13,
                    width: width*0.85,
                    child: Column(
                      children: [
                        SizedBox(height: height*0.01,),
                        Container(
                          width: width*0.8,
                          height: height*0.049,
                          decoration: BoxDecoration(
                            color: ColorConstant.WHITE_BACKGROUND,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('    Pick up date',style: robotoBlack,),
                              Text(':15/7/23               ',style: robotoBold,),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        Container(
                          width: width*0.8,
                          height: height*0.049,
                          decoration: BoxDecoration(
                            color: ColorConstant.WHITE_BACKGROUND,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('    Drop date',style: robotoBlack,),
                              Text(':17/7/23               ',style: robotoBold,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:height*0.01),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('Support',style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: width*0.05)),
                   Text('Invoice                  ',style: robotoMediumBlack,)
                 ],
               ),
                SizedBox(height:height*0.01),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height: height*0.28,
                    width: width*0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Ride charge                                    ',style: robotoMediumBlack,),
                        const Divider(),
                        Text('Booking & convenience charge      ',style: robotoMediumBlack,),
                        const Divider(),
                        Text('Total ride fare                                  ',style: robotoMediumBlack,),
                        const Divider(),
                        Text('Setting                                            ',style: robotoMediumBlack,),
                        const Divider(),
                        Text('Support                                             ',style: robotoMediumBlack,),
                      ],
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
