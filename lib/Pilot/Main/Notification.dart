import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      body:ListView(
        children: [
          Container(
            height: height*0.05,
            color: ColorConstant.WHITE_COL0R,
            child: Center(child: Text('Notification',style: robotoBlackProfile,)),
          ),
          Container(
            height: height*1.1,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                     Card(
                       margin: const EdgeInsets.symmetric(
                       vertical: 10, horizontal: 15),
                          child: Padding(
                                padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(Images.girl),
                                    ),
                                    Text('5 hours ago',style: robotoBlack,)
                                  ],
                                ),
                                SizedBox(width: width*0.050,),
                                Column(
                                  children: [
                                    Text('Srcret:(Something\nyou....)',style: robotoMediumBlack,),
                                    Text('(.... is inside this)',style: robotoBlack,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                     ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Images.girl),
                            ),
                            Text('5 hours ago',style: robotoBlack,)
                          ],
                        ),
                        SizedBox(width: width*0.050,),
                        Column(
                          children: [
                            Text('Srcret:(Something\nyou....)',style: robotoMediumBlack,),
                            Text('(.... is inside this)',style: robotoBlack,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                       Container(
                         height: height*0.2,
                         width: width*0.8,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(Images.notifiation),
                           )
                         ),
                       ),
                        Text('Srcret:(Something\nyou....)',style: robotoMediumBlack,),
                        Text('(.... is inside this)',style: robotoBlack,),
                        Padding(
                          padding:EdgeInsets.only(right:width*0.5),
                          child: Text('5 hours ago',style: robotoBlack,),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Images.girl),
                            ),
                            Text('5 hours ago',style: robotoBlack,)
                          ],
                        ),
                        SizedBox(width: width*0.050,),
                        Column(
                          children: [
                            Text('Srcret:(Something\nyou....)',style: robotoMediumBlack,),
                            Text('(.... is inside this)',style: robotoBlack,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Images.girl),
                            ),
                            Text('5 hours ago',style: robotoBlack,)
                          ],
                        ),
                        SizedBox(width: width*0.050,),
                        Column(
                          children: [
                            Text('Srcret:(Something\nyou....)',style: robotoMediumBlack,),
                            Text('(.... is inside this)',style: robotoBlack,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
