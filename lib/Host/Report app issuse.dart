import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Reportappissuse extends StatefulWidget {
  const Reportappissuse({super.key});

  @override
  State<Reportappissuse> createState() => _ReportappissuseState();
}

class _ReportappissuseState extends State<Reportappissuse> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Report app issuse',style: robotoBlackProfile),
          actions: [
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: ColorConstant.Black_COLOR,size: 26,), label:Text(''))
          ],
        ),
      ),
      body:Container(
       height: height*1.0,
        width: width*1.5,
        color: ColorConstant.WHITE_BACKGROUND,
        child: Column(
          children: [
            SizedBox(height: height*0.03,),
            Card(
              color: ColorConstant.WHITE_COL0R,
              child:SizedBox(
                height: height*0.13,
                width: width*0.9,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: height*0.05,
                            width: width*0.3,
                            child: const Center(child: Text('FAQ',style: robotoMediumBlack,))),
                        SizedBox(
                            height: height*0.05,
                            width: width*0.16,
                            child: const Icon(Icons.navigate_next))
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: height*0.05,
                            width: width*0.39,
                            child: const Center(child: Text('       Report b bug',style: robotoMediumBlack,))),
                        SizedBox(
                            height: height*0.05,
                            width: width*0.16,
                            child: const Icon(Icons.navigate_next))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            CustomButton(onTap: () {  }, text: 'Have a chat', btnColor:ColorConstant.Green_BACKGROUND, textColor: null,),
            SizedBox(height: height*0.02,),
            CustomButton(onTap: () {  }, text: 'Need assistance', btnColor:ColorConstant.RED_COLOR, textColor: null,),
          ],
        ),
      ),
    );
  }
}
