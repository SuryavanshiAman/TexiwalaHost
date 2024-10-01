import 'package:flutter/material.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Dashboardorder extends StatefulWidget {
  const Dashboardorder({super.key});

  @override
  State<Dashboardorder> createState() => _DashboardorderState();
}

class _DashboardorderState extends State<Dashboardorder> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Orders',style: robotoBlackProfile),
          actions: [
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.notifications_active,color: ColorConstant.Black_COLOR,size: 26,), label:const Text(''))
          ],
        ),
      ),
      body:Container(
        height: height*0.8,
        color: ColorConstant.WHITE_BACKGROUND,
        child:  Column(
            children: [
              Container(
                height: height*0.003,
                color: ColorConstant.WHITE_BACKGROUND,
              ),
              SizedBox(height: height*0.02,),
              Padding(
                padding:EdgeInsets.only(right:width*0.6),
                child: const Text("Live orders",style: robotoMediumBlack,),
              ),
              SizedBox(height: height*0.02,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.Orderlive);
                },
                child: Container(
                  height: height*0.15,
                  width: width*0.87,
                  decoration: const BoxDecoration(
                    color: ColorConstant.Green_BACKGROUND,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.03,),
                      const Text('Edrin Rodger',style: robotoMediumExtraWhite,),
                      const Text('Thu-12/05/23-Mon-16/5/23',style: robotoMediumWhite,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.04,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.Orderhistory);
                },
                child: Container(
                  height: height*0.07,
                  width: width*0.87,
                  decoration: const BoxDecoration(
                    color: ColorConstant.WHITE_COL0R,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width*0.7,
                        child: const Text('      Order history',style: robotoBold,),
                      ),
                       SizedBox(
                         width: width*0.17,
                         child: const Icon(Icons.navigate_next),
                       ),
                    ],
                  ),
                ),
              ),
            ]
        ),
      )
    );
  }
}
