import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';



class Testinghomestep extends StatefulWidget {
  @override
  _TestinghomestepState createState() => _TestinghomestepState();
}

class _TestinghomestepState extends State<Testinghomestep> {




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<StepperData> stepperData = [
      StepperData(
          title: StepperText("Your documents are  uploaded", textStyle:robotoMediumBlack),
          iconWidget: Container(
            child: Center(child: Text('')),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstant.Green_BACKGROUND,
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
          )),
      StepperData(
          title: StepperText("Your documents have been received by the Taxiwala  team", textStyle:robotoMediumBlack),
          iconWidget: Container(
            child: Center(child: Text('')),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstant.Green_BACKGROUND,
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
          )),

      StepperData(
          title: StepperText("Your documents have been verified", textStyle:robotoMediumBlack),
          iconWidget: Container(
            child: Center(child: Text('')),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstant.Green_BACKGROUND,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          )),
      StepperData(
          title: StepperText("Approved!", textStyle:robotoMediumBlack),
          iconWidget: Container(
            child: Center(child: Text('')),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstant.Green_BACKGROUND,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          )),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("",style: robotoRegular.copyWith(fontSize: width*0.05,color: Colors.yellow,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only( left: 10,right: 30),
          child: AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              iconWidth: width*0.04,
              iconHeight: height*0.019,
              activeBarColor: Colors.grey.shade300,
              inActiveBarColor: ColorConstant.Green_BACKGROUND,
              inverted: false,
              verticalGap:35,
              activeIndex: 0,
              barThickness: 4
          ),
        ),


      ],
    );
  }


}