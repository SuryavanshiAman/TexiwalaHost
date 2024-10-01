import 'package:flutter/material.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Settingprofile extends StatefulWidget {
  const Settingprofile({super.key});

  @override
  State<Settingprofile> createState() => _SettingprofileState();
}

class _SettingprofileState extends State<Settingprofile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
     children: [
       Container(
         height:height*0.003,
         color: Colors.grey[400],
       ),
       Container(
         height: height*0.630,
         color: ColorConstant.WHITE_BACKGROUND,
         child: Column(
           children: [
             SizedBox(height: height*0.02,),
             const ListTile(
               leading: CircleAvatar(
                 radius: 40,
                 backgroundColor: ColorConstant.Black_COLOR,
                 child: Icon(Icons.email,size: 25,color: ColorConstant.WHITE_COL0R),
               ),
               title: Text('Email',style: robotoBold),
               subtitle: Text('Edrin12@gmail.com',style: robotoMedium,),
             ),
             const Divider(),
             const ListTile(
               leading: CircleAvatar(
                 radius: 40,
                 backgroundColor: ColorConstant.Black_COLOR,
                 child: Icon(Icons.person,size: 25,color: ColorConstant.WHITE_COL0R),
               ),
               title: Text('Gender',style: robotoBold),
               subtitle: Text('Maile',style: robotoMedium),
             ),
             const Divider(),
             const ListTile(
               leading: CircleAvatar(
                 radius: 40,
                 backgroundColor: ColorConstant.Black_COLOR,
                 child: Icon(Icons.calendar_month,size: 25,color: ColorConstant.WHITE_COL0R),
               ),
               title: Text('Date of Birth',style: robotoBold),
               subtitle: Text('01/01/2002',style: robotoMedium),
             ),
             const Divider(),
             const ListTile(
               leading: CircleAvatar(
                 radius: 40,
                 backgroundColor: ColorConstant.Black_COLOR,
                 child: Icon(Icons.emoji_people,size: 25,color: ColorConstant.WHITE_COL0R),
               ),
               title: Text('Language',style: robotoBold),
               subtitle: Text('English',style: robotoMedium),
             ),
             const Divider(),
             const ListTile(
               leading: CircleAvatar(
                 radius: 40,
                 backgroundColor: ColorConstant.Black_COLOR,
                 child: Icon(Icons.warning,size: 25,color: ColorConstant.WHITE_COL0R,),
               ),
               title: Text('Emergency Contacts',style: robotoBold),
               subtitle: Text('Edrin12@gmail.com',style: robotoMedium),
             ),
           ],
         ),
       ),
     ],
    );
  }
}
