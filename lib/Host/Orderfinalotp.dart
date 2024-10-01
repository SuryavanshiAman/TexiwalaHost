import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantButton/Stepperlist.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/PinFiled.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Finalotp extends StatefulWidget {
  const Finalotp({super.key});

  @override
  State<Finalotp> createState() => _FinalotpState();
}

class _FinalotpState extends State<Finalotp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height*0.1),
          child: AppBar(
              centerTitle: true,
              title: Text('Order',style: robotoBlackProfile),
              actions: [
                TextButton.icon(onPressed: (){}, icon: const Icon(Icons.notifications_active_outlined,color: ColorConstant.Black_COLOR,size: 26,), label:const Text(''))
              ]
          )
      ),
      body: Container(
          color: ColorConstant.WHITE_BACKGROUND,
          child:  Column(
            children: [
              SizedBox(height:height*0.03),
              AnotherStepper(
                stepperList: Bookdata.getStepperListFour(context),
                stepperDirection: Axis.horizontal,
                iconWidth: 15,
                iconHeight: 15,
                activeBarColor: ColorConstant.Green_BACKGROUND,
                inActiveBarColor: ColorConstant.WHITE_COL0R,
                inverted: true,
                verticalGap: 25,
                activeIndex: 3,
                barThickness: 4,
              ),
              Custom_pin_field(),
              SizedBox(height:height*0.02),
              SizedBox(height:height*0.02),
              Padding(
                padding:EdgeInsets.only(right:width*0.6),
                child: const Text('Instructions:',style: robotoMediumBlack,),
              ),
              SizedBox(height:height*0.01),
              SizedBox(
                height:height*0.16,
                child: Row(
                  children: [
                    SizedBox(width:width*0.05),
                    SizedBox(
                      height:height*0.16,
                      width: width*0.02,
                      child: const Text('•',style: TextStyle(fontSize: 30),),
                    ),
                    SizedBox(width: width*0.04,),
                    SizedBox(
                      height:height*0.16,
                      child: const Text('You agree to return the car to us in the same condition\nyou received it, ordinary wear and tear excepted, on the\ndate, at the time and to thelocation specified in the\nRental Contract The car must be returned to the agreed\nreturn location as specified on the Rental Contract If\nreturn is indicated to a location other than the location\nwhere your rental commences, you my have to pay\na one way service fee',style: TextStyle(fontSize: 12),),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.01),
              SizedBox(
                height:height*0.16,
                child: Row(
                  children: [
                    SizedBox(width:width*0.05),
                    SizedBox(
                      height:height*0.16,
                      width: width*0.02,
                      child: const Text('•',style: TextStyle(fontSize: 30),),
                    ),
                    SizedBox(width:width*0.05),
                    SizedBox(
                      height:height*0.16,
                      child: const Text('You agree to return the car to us in the same condition\nyou received it, ordinary wear and tear excepted, on the\nndate, at the time and to the location specified in the\nRental Contract. The car must be returned to the agreed\nreturn location as specified on the Rental Contract. If\nreturn is indicated to a location other than the location\nwhere your rental commences, you may have to pay a\none way service fee',style: TextStyle(fontSize: 12),),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.09),
              CustomButton(onTap: () {
                Navigator.pushNamed(context, RoutesName.Orderridereview);
              }, text: 'Verify to end', btnColor: ColorConstant.Green_BACKGROUND, textColor: null,),
            ],
          )
      ),
    );
  }
}
