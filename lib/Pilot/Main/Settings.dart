import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Pilot/Settingdocuments.dart';
import 'package:taxiwalahost/Pilot/Settingpofile.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/ConstantSlidingSwitch.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Settingpiolt extends StatefulWidget {
  const Settingpiolt({super.key});

  @override
  State<Settingpiolt> createState() => _SettingpioltState();
}

class _SettingpioltState extends State<Settingpiolt> {
  bool _isSecondPage = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSecondPage = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height:height*1.01,
            width: width*1.0,
            color: ColorConstant.WHITE_COL0R,
            child: Column(
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
                Row(
                  children: [
                    SizedBox(width: width*0.04,),
                     ColorButton(onTap: () {  }, text: 'Logout', btnColor: ColorConstant.Black_COLOR, textColor: ColorConstant.WHITE_COL0R),
                    SizedBox(width: width*0.3,),
                    Container(
                       height: height*0.08,
                       width: width*0.13,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                        color: ColorConstant.WHITE_BACKGROUND,
                       ),
                       child: Icon(Icons.edit),
                     ),
                   ],
                ),
                Divider(),
                Center(
                  child: SlidingSwitch(
                    value:  _isSecondPage,
                    width: width*0.82,
                    onChanged:  _toggleSwitch,
                    height: height*0.063,
                    animationDuration: const Duration(milliseconds: 400),
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                    textOff: "Profile",
                    textOn: "Docuements",
                    colorOn: Colors.white,
                    colorOff: Colors.white,
                    background:Colors.grey.shade300,
                    buttonColor: ColorConstant.Green_BACKGROUND,
                    inactiveColor: ColorConstant.Black_COLOR,
                  ),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  child: _isSecondPage?const Settingdocuments():const Settingprofile(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
