import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Dashboardprofile extends StatefulWidget {
  const Dashboardprofile({super.key});

  @override
  State<Dashboardprofile> createState() => _DashboardprofileState();
}

class _DashboardprofileState extends State<Dashboardprofile> {
  @override
  int changecolor=0;
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('My Profile',style: robotoBlackProfile),
          actions: [
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.notifications_active,color: ColorConstant.Black_COLOR,size: 26,), label:Text(''))
          ],
        ),
      ),
      body:Column(
        children: [
          Container(
            height: height*0.18,
            width: MediaQuery.of(context).size.width,
            color: ColorConstant.Black_COLOR,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.03),
                  child: Container(
                    height: height*0.1,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        border: Border.all(width: width*0.01,color: Colors.lightBlueAccent),
                        image: const DecorationImage(
                          image: AssetImage(Images.girl),
                        ),
                        shape: BoxShape.circle,
                        color: ColorConstant.WHITE_COL0R
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.1,
                  width: width*0.5,
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        text: "Edrin Rodger\n",
                        style:   robotoMediumExtraWhite,
                        children: <TextSpan>[
                          TextSpan(
                            text: '9846278910',
                            style:robotoMediumWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child:  Padding(
                    padding: EdgeInsets.only(right: width*0.04,top: height*0.07),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstant.WHITE_COL0R,
                      child: Icon(Icons.edit,color: ColorConstant.Black_COLOR,size:30 ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.Settingpage);
              setState(() {
                changecolor=1;
              });
            },
           child: Container(
             height: height*0.1,
             color: changecolor==1? Color(0xfff1e6ac):ColorConstant.WHITE_COL0R,
             child: Center(
               child: ListTile(
                 leading: CircleAvatar(
                   radius: 40,
                   backgroundColor: ColorConstant.Black_COLOR,
                   child: Icon(Icons.settings,size: 25,color: changecolor==1? Colors.amber:ColorConstant.WHITE_COL0R),
                 ),
                 title: Text('Setting',style: robotoBold),
               ),
             ),
           ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                changecolor=2;
              });
            },
            child: Container(
              height: height*0.1,
              color: changecolor==2? Color(0xfff1e6ac):ColorConstant.WHITE_COL0R,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: ColorConstant.Black_COLOR,
                    child: Icon(Icons.warning_amber,size: 25,color:changecolor==2? Colors.amber:ColorConstant.WHITE_COL0R),
                  ),
                  title: Text('Emergency',style: robotoBold),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.Reportappissuse);
              setState(() {
                changecolor=3;
              });
            },
            child: Container(
              height: height*0.1,
              color: changecolor==3? Color(0xfff1e6ac):ColorConstant.WHITE_COL0R,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: ColorConstant.Black_COLOR,
                    child: Icon(Icons.report,size: 25,color:  changecolor==3? Colors.amber:ColorConstant.WHITE_COL0R),
                  ),
                  title: Text('Report app issuses',style: robotoBold),
                ),
              ),
            ),
          ),

         Spacer(),
          ColorButton(onTap: () {
          }, text: 'Logout', btnColor: ColorConstant.Green_BACKGROUND, textColor: null,),
          SizedBox(height: height*0.02,),
        ],
      ),
    );
  }
}
