import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Ridesummary extends StatefulWidget {
  const Ridesummary({super.key});

  @override
  State<Ridesummary> createState() => _RidesummaryState();
}

class _RidesummaryState extends State<Ridesummary> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height:height*0.2,
            width: width*1.0,
            color: ColorConstant.Green_BACKGROUND,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: height*0.02,),
                 Text('Varshith wants to pay',style: robotoMediumExtraWhite,),
                 Text('₹5000.00',style: robotoWhite,),
                 Text('Cash collected',style: robotoMediumWhite,),
               ],
             ),
          ),
          Container(
            height: height*0.9,
            width: width*1.0,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                SizedBox(height: height*0.02,),
                Card(
                    color: ColorConstant.WHITE_COL0R,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding:EdgeInsets.only(right:width*0.5),
                              child: Text('Rate the ride',style: robotoBold,),
                            ),
                            SizedBox(height: height*0.02,),
                            Container(
                              height: height*0.2,
                              width: width*0.87,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: ColorConstant.WHITE_BACKGROUND,
                              ),
                              child:Row(
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
                            SizedBox(height: height*0.02,),
                        Container(
                          height: height*0.2,
                          width: width*0.87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: ColorConstant.WHITE_COL0R,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: height*0.01,),
                              Padding(
                                padding:EdgeInsets.only(right: width*0.4),
                                child: Text('The ride was good',style: robotoBold,),
                              ),
                              Divider(),
                              Padding(
                                padding:EdgeInsets.only(right: width*0.4),
                                child: Text('The ride was good',style: robotoBold,),
                              ),
                              Divider(),
                              Padding(
                                padding:EdgeInsets.only(right: width*0.4),
                                child: Text('The ride was good',style: robotoBold,),
                              ),
                              Divider(),
                              Padding(
                                padding:EdgeInsets.only(right: width*0.4),
                                child: Text('The ride was good',style: robotoBold,),
                              ),
                            ],
                          ),
                        ),
                            SizedBox(height: height*0.02,),
                            Padding(
                              padding:EdgeInsets.only(right:width*0.6),
                              child: Text('Other',style: robotoBold,),
                            ),
                            SizedBox(height: height*0.01,),
                            Constant_text_field(
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              controller: null,
                              hintText: 'Your review....',
                              filled: true,
                              // height: height*0.3,
                              minLines: 6,
                              width: width*0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Descrtiption,
                            ),
                            SizedBox(height: height*0.01,),
                            ColorButton(onTap: () {  }, text: 'Save', btnColor:ColorConstant.Black_COLOR, textColor: ColorConstant.WHITE_COL0R,),
                          ],
                        )
                    )
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
  String?Validate_Descrtiption(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
}
