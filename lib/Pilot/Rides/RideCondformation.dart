import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/PinFiled.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class RideCondfirmation extends StatefulWidget {
  const RideCondfirmation({super.key});

  @override
  State<RideCondfirmation> createState() => _RideCondfirmationState();
}

class _RideCondfirmationState extends State<RideCondfirmation> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(0,height*0.28),
          child:Column(
            children: [
              Container(
                height: height*0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.electric_bike,),
                    Text(' Bike ',style: robotoBold,),
                    Container(
                      height: height*0.035,
                      width:width*0.17 ,
                      decoration: BoxDecoration(
                        color: ColorConstant.WHITE_BACKGROUND,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(child: Text('pickup',style:TextStyle(color: ColorConstant.Green_BACKGROUND))),
                    ),
                  ],
                ),
              ),
              Text('Varshith Verma',style: robotoBlackProfile,),
              Text('SOS',style: TextStyle(color: ColorConstant.Green_BACKGROUND,fontSize: 10,decoration: TextDecoration.underline),),
              Container(
                height: height*0.08,
                color: ColorConstant.Green_BACKGROUND,
                child:Column(
                  children: [
                    Center(child: Text('Customer to arrive in',style: robotoMediumExtraWhite,)),
                    Center(child: Text('04:57',style: robotoWhite,)),
                  ],
                ),
              ),
              Container(
                height: height*0.16,
                width: width*1.0,
                color: ColorConstant.WHITE_COL0R,
                child: Column(
                  children: [
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('     Pick up',style:robotoBlack.copyWith(color: ColorConstant.Green_BACKGROUND)),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: ColorConstant.Black_COLOR,
                          child: Icon(Icons.send,color: ColorConstant.WHITE_COL0R,),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.02,),
                    Text('Saibabaa Kovil,Coimbatore,TamilNadu\n,India',style: robotoMediumBlack,),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.590,
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
                                  children: [
                                    Text('Enter OTP from customer',style: robotoMediumBlack,),
                                    Container(
                                      height: height*0.15,
                                      width: width*0.8,
                                      child: Custom_pin_field(),
                                    ),
                                  ],
                                ),
                              )
                         ),
                Container(
                  height: height*0.2,
                  width: width*0.87,
                  child: Column(
                    children: [
                      SizedBox(height: height*0.02,),
                      Text('if payment status is paid online\nat the end,then',style: robotolargeBlack,),
                      Divider(),
                      Text('No need for the cash to be collected\n Don\'t collect money from your GPAY or Paytm\norUPI',style: robotoBlack,),
                    ],
                  ),
                ),
                SizedBox(height: height*0.02,),
                ColorButton(onTap: () {
                  Navigator.pushNamed(context, RoutesName.Ride);
                }, text: 'Verify & Start', btnColor:Colors.grey, textColor:ColorConstant.WHITE_COL0R,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
