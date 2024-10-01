import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantButton/Stepperlist.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Orderlive extends StatefulWidget {
  const Orderlive({super.key});

  @override
  State<Orderlive> createState() => _OrderliveState();
}

class _OrderliveState extends State<Orderlive> {
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
           height: height*0.95,
           color: ColorConstant.WHITE_BACKGROUND,
           child: Column(
             children: [
               Container(
                 height: height*0.003,
                 color: Colors.grey,
               ),
               SizedBox(height: height*0.02,),
               AnotherStepper(
                   stepperList: Bookdata.getStepperListOne(context),
                   stepperDirection: Axis.horizontal,
                   iconWidth: 15,
                   iconHeight: 15,
                   activeBarColor: ColorConstant.Green_BACKGROUND,
                   inActiveBarColor: ColorConstant.WHITE_COL0R,
                   inverted: true,
                   verticalGap: 25,
                   activeIndex: 0,
                   barThickness: 4,
               ),
               Text('Pick up confirumed',style: robotoBlackProfile,),
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
               Card(
                 color: ColorConstant.WHITE_COL0R,
                 child:SizedBox(
                   height: height*0.2,
                   width: width*0.9,
                   child: Column(
                     children: [
                       SizedBox(height: height*0.01,),
                      Container(
                        height: height*0.05,
                        width: width*0.8,
                       decoration: BoxDecoration(
                         color: ColorConstant.WHITE_BACKGROUND,
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Pick up date',style: robotoBlack,),
                            Text(':15/7/23',style: robotoBold,),
                          ],
                        ),
                      ),
                       SizedBox(height: height*0.01,),
                       Container(
                         height: height*0.05,
                         width: width*0.8,
                         decoration: BoxDecoration(
                           color: ColorConstant.WHITE_BACKGROUND,
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text('Drop date',style: robotoBlack,),
                             Text(':17/7/23',style: robotoBold,),
                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container(
                         height: height*0.05,
                         width: width*0.8,
                         decoration: BoxDecoration(
                           color: ColorConstant.WHITE_BACKGROUND,
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text('Total time taken',style: robotoBlack,),
                             Text(':2 days     ',style: robotoBold,),
                           ],
                         ),
                       ),
                     ],
                   ),
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
                       SizedBox(height: height*0.02,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                             height:height*0.06,
                             width:width*0.12,
                             decoration: const BoxDecoration(
                               color: ColorConstant.Black_COLOR,
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                             ),
                             child: Icon(Icons.call,color: ColorConstant.WHITE_COL0R,),
                           ),
                           Constant_text_field(
                             controller: null,
                             keyboardType: TextInputType.name,
                             hintText: 'Railway Satation',
                             filled: true,
                             validator: Validate_Name,
                             height:height*0.065,
                             width: width*0.7,
                             fillColor: Colors.grey[300],
                           ),
                         ],
                       ),
                       SizedBox(height: height*0.02,),
                       SizedBox(
                         height: height*0.07,
                         child: Row(
                           children: [
                             SizedBox(width:width*0.05),
                             InkWell(
                               onTap: (){

                               },
                               child: Container(
                                   height:height*0.055,
                                   width:width*0.23,
                                   decoration: const BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     color: ColorConstant.Black_COLOR,
                                   ),
                                   child: const Center(child: Text('Cancel',style: robotoMediumExtraWhite,))
                               ),
                             ),
                             SizedBox(width:width*0.05),
                             Container(
                                 height:height*0.055,
                                 width:width*0.23,
                                 decoration: const BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: ColorConstant.Black_COLOR,
                                 ),
                                 child: const Center(child: Text('Support',style: robotoMediumExtraWhite,))
                             ),
                             SizedBox(width:width*0.05),
                             Container(
                                 height:height*0.055,
                                 width:width*0.23,
                                 decoration: const BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: ColorConstant.Black_COLOR,
                                 ),
                                 child: const Center(child: Text('Share',style: robotoMediumExtraWhite,))
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: height*0.02,),
               CustomButton(onTap: () {
                 Navigator.pushNamed(context, RoutesName.OTPpages);
               }, text: 'Customer arrived', btnColor:ColorConstant.Green_BACKGROUND, textColor: null,),
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
