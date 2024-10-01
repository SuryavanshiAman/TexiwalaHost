import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height*0.2,
            color: ColorConstant.WHITE_COL0R,
            child: Row(
              children: [
               Container(
                 height: height*0.12,
                 width: width*0.35,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.indigo,width: width*0.007),
                   shape: BoxShape.circle,
                   image: DecorationImage(
                     image: AssetImage(Images.girl),
                   )
                 ),
               ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Edrin Rodger',style: robotoBlackProfile,),
                    Text('9846278910',style: robotoMediumBlack,)
                  ],
                ),
              ),
              ],
            ),
          ),
          Container(
            height: height*0.72,
            color: ColorConstant.WHITE_BACKGROUND,
            child: Column(
              children: [
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, RoutesName.Performance);
                       },
                       child: Card(
                       margin: const EdgeInsets.symmetric(
                           vertical: 10, horizontal: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('    Performance',style: robotoMediumBlack,),
                                  Icon(Icons.arrow_forward)
                                ],
                              )
                              ),
                            ),
                     ),
                         Card(
                            margin: const EdgeInsets.symmetric(
                             vertical: 10, horizontal: 15),
                                  child: Container(
                                    height: height*0.4,
                                    width: width*0.9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('   Driver wallet',style: robotoMediumBlack,),
                                            Icon(Icons.arrow_forward)
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('    Partner care',style: robotoMediumBlack,),
                                            Icon(Icons.arrow_forward)
                                          ],
                                        ),
                                        Divider(),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushNamed(context, RoutesName.Settingpiolt);
                                          },
                                          child: Container(
                                            height: height*0.07,
                                           child: Column(
                                             children: [
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text('    Settings',style: robotoMediumBlack,),
                                                   Icon(Icons.arrow_forward)
                                                 ],
                                               ),
                                               Text('Mange profile App updates                            ',style: robotoBlack,)
                                             ],
                                           ),
                                          ),
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('    SOS calls',style: robotoMediumBlack,),
                                            Icon(Icons.arrow_forward)
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('    Report app issuses',style: robotoMediumBlack,),
                                            Icon(Icons.arrow_forward)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                  ),
                SizedBox(height: height*0.01,),
                ColorButton(onTap: () {  }, text: 'Logout', btnColor: ColorConstant.Black_COLOR, textColor:ColorConstant.WHITE_COL0R),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
