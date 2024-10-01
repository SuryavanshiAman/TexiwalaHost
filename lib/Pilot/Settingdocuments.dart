import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Settingdocuments extends StatefulWidget {
  const Settingdocuments({super.key});

  @override
  State<Settingdocuments> createState() => _SettingdocumentsState();
}

class _SettingdocumentsState extends State<Settingdocuments> {
  bool showphoto=false;
  bool showRC=false;
  bool showInsurance=false;
  bool showlicence=false;
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Column(
            children: [
    Container(
      height:height*0.003,
      color: Colors.grey,
    ),
    Container(
      height: height*0.630,
      color: ColorConstant.WHITE_BACKGROUND,
      child: Column(
        children: [
          Card(
              margin: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 15),
              child: Container(
                width: width*0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('   Vehicle photo',style: robotoMediumBlack,),
                       IconButton(onPressed: (){
                         setState(() {
                           showphoto=!showphoto;
                         });
                       }, icon:  Icon(Icons.arrow_forward),)
                      ],
                    ),
                    if(showphoto)
                      Container(
                        height: height*0.3,
                        width: width*0.7,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Images.document),
                            )
                        ),
                      ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('    Vehicle RC details',style: robotoMediumBlack,),
                        IconButton(onPressed: (){
                          setState(() {
                            showRC=!showRC;
                          });
                        }, icon:  Icon(Icons.arrow_forward),)
                      ],
                    ),
                    if(showRC)
                      Container(
                        height: height*0.3,
                        width: width*0.7,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Images.document),
                            )
                        ),
                      ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('    Vehicle insurance',style: robotoMediumBlack,),
                        IconButton(onPressed: (){
                          setState(() {
                            showInsurance=!showInsurance;
                          });
                        }, icon:  Icon(Icons.arrow_forward),)
                      ],
                    ),
                    if(showInsurance)
                      Container(
                        height: height*0.3,
                        width: width*0.7,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Images.document),
                            )
                        ),
                      ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('    Driver license',style: robotoMediumBlack,),
                        IconButton(onPressed: (){
                          setState(() {
                            showlicence=!showlicence;
                          });
                        }, icon:  Icon(Icons.arrow_forward),)
                      ],
                    ),
                    if(showlicence)
                      Container(
                        height: height*0.3,
                        width: width*0.7,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Images.document),
                            )
                        ),
                      ),
                  ],
                ),
              )
          ),

        ],
      ),
    ),
  ],
    );
  }

}


