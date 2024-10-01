import 'package:flutter/material.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Incentives extends StatefulWidget {
  const Incentives({super.key});

  @override
  State<Incentives> createState() => _IncentivesState();
}

class _IncentivesState extends State<Incentives> {
  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height*0.25,
            color: ColorConstant.WHITE_COL0R,
            child: Column(
              children: [
                SizedBox(height: height*0.05,),
                Center(child: Text('Incentives',style: robotoBlackProfile,)),
                Text('June',style: robotoBold,),
                SizedBox(
                  height: height * 0.1,
                  width: width * 4.8,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.16,
                          decoration: const BoxDecoration(
                            color: ColorConstant.WHITE_BACKGROUND,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Wed', style: robotoBold),
                              Text('14', style: robotoRegularBlack),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height*0.08,
            color: ColorConstant.Green_BACKGROUND,
            child: Row(
              children: [
                SizedBox(width: width*0.03,),
                Text('Total incentives earned',style: robotoMediumExtraWhite,),
                SizedBox(width: width*0.16,),
                Text('₹4000',style: robotoWhite,),
              ],
            ),
          ),
          Container(
            height: height*0.590,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                SizedBox(height: height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('   Today',style: robotoBold,),
                    Text('12:00AM-11:59PM    ',style: robotoBold,)
                  ],
                ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, RoutesName.Incentivesdescriptions);
                       },
                       child: Card(
                       margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Earn an extra ₹2000\nfor 5 booking',style: robotolargeBlack,),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
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

