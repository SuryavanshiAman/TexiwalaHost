import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantButton/Stepperlist.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Orderridereview extends StatefulWidget {
  const Orderridereview({super.key});

  @override
  State<Orderridereview> createState() => _OrderridereviewState();
}

class _OrderridereviewState extends State<Orderridereview> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Dashboard',style: robotoBlackProfile),
          actions: [
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.notifications_active_outlined,color: ColorConstant.Black_COLOR,size: 26,), label:const Text(''))
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: height*0.99,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                Container(
                  height: height*0.003,
                  color: Colors.grey,
                ),
                SizedBox(height: height*0.02,),
                AnotherStepper(
                  stepperList: Bookdata.getStepperListFive(context),
                  stepperDirection: Axis.horizontal,
                  iconWidth: 15,
                  iconHeight: 15,
                  activeBarColor: ColorConstant.Green_BACKGROUND,
                  inActiveBarColor: ColorConstant.WHITE_COL0R,
                  inverted: true,
                  verticalGap: 25,
                  activeIndex: 4,
                  barThickness: 4,
                ),
                Text('Customer review',style: robotoBlackProfile,),
                SizedBox(height: height*0.02,),
                Container(
                  height: height*0.22,
                  width: width*0.87,
                  decoration: BoxDecoration(
                    color: ColorConstant.Black_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.01,),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(Images.girl),
                      ),
                      SizedBox(height: height*0.01,),
                      Text('Edrin Rodger',style: robotoMediumExtraWhite,),
                      SizedBox(height: height*0.002,),
                      Text('9846278910',style: robotoMediumWhite,),
                      SizedBox(height: height*0.002,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Text('4.3',style: robotoMediumWhite,)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.02,),
                SizedBox(
                  height:height*0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: ColorConstant.WHITE_COL0R,
                        child:SizedBox(
                          height: height*0.14,
                          width: width*0.44,
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
                          height: height*0.14,
                          width: width*0.44,
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
                SizedBox(height: height*0.01,),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          SizedBox(
                            height:height*0.05,
                            width: width*0.87,
                            child: const Text('  Give us your rating',style: robotoMediumBlack,),
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:width*0.25),
                            child: SizedBox(
                              height:height*0.07,
                              width:width*0.87,
                              child: FivePointedStar(
                                onChange: (count){
                                  setState(() {
                                    var mycount = count;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                SizedBox(height: height*0.01,),
                Constant_text_field(
                  controller: null,
                  keyboardType: TextInputType.name,
                  hintText: 'Feedback...',
                  filled: true,
                  validator: Validate_Name,
                  height: height*0.08,
                  width: width*0.9,
                  fillColor: Colors.grey[300],
                  sufixIcon: Icon(Icons.send),
                ),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Report damages',style: robotoBold,),
                          Icon(Icons.send),
                        ],
                      ),
                    )
                ),
                CustomButton(onTap: () {
                  // Navigator.pushNamed(context, RoutesName.OTPpages);
                }, text: 'Submit', btnColor:ColorConstant.Green_BACKGROUND, textColor: null,),
              ],
            ),
          ),
        ],
      ),
    );
  }
  String? Validate_Name(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
}
