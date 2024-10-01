import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Settings',style: robotoBlackProfile),
          actions: [
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.notifications_active_outlined,color: ColorConstant.Black_COLOR,size: 26,), label:const Text(''))
          ],
        ),
      ),
      body:ListView(
        children: [
          Container(
            height: height*0.004,color: Colors.grey,
          ),
          Container(
            height: height*1.07,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffE5E6E8),
            child: Column(
              children: [
                SizedBox(height:height*0.03),
                SizedBox(
                  height: height*0.05,
                  child: Padding(
                    padding:EdgeInsets.only(right:width*0.6),
                    child: const Text('General',style: robotolargeBlack),
                  ),
                ),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height: height*0.19,
                    width: width*0.89,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){

                          },
                          child:   SizedBox(
                            height: height*0.08,
                            child: Padding(
                              padding:EdgeInsets.only(left:width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: height*0.06,
                                    width: width*0.15,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorConstant.Black_COLOR
                                    ),
                                    child: const Icon(Icons.person,color: ColorConstant.WHITE_COL0R,size: 30,),
                                  ),
                                  SizedBox(
                                    height: height*0.08,
                                    width: width*0.45,
                                    child: Padding(
                                      padding:EdgeInsets.only(top:height*0.02,left:width*0.05),
                                      child: RichText(
                                        text: const TextSpan(
                                          text: "Profile\n",
                                          style:   robotoBold,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '2547098180',
                                              style:robotoBlack,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey[300],),
                        InkWell(
                          onTap: (){

                          },
                          child:  SizedBox(
                            height: height*0.08,
                            child: Padding(
                              padding:EdgeInsets.only(left: width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: height*0.06,
                                    width: width*0.15,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorConstant.Black_COLOR
                                    ),
                                    child: const Icon(Icons.language,color: ColorConstant.WHITE_COL0R,size: 30,),
                                  ),
                                  SizedBox(
                                    height: height*0.08,
                                    width: width*0.6,
                                    child: Padding(
                                      padding:EdgeInsets.only(top:height*0.02,left:width*0.05),
                                      child: RichText(
                                        text: const TextSpan(
                                          text: "App Language\n",
                                          style:   robotoBold,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'English',
                                              style:robotoBlack,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:height*0.02,),
                SizedBox(
                  height: height*0.05,
                  child: Padding(
                    padding:EdgeInsets.only(right:width*0.34),
                    child: const Text('Manage documents',style: robotolargeBlack),
                  ),
                ),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height: height*0.27,
                    width: width*0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: height*0.05,
                              width: width*0.3,
                                child: const Center(child: Text('Aadhar',style: robotoMediumBlack,))),
                            SizedBox(
                                height: height*0.05,
                                width: width*0.16,
                                child: const Icon(Icons.navigate_next))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: height*0.05,
                                width: width*0.32,
                                child: const Center(child: Text('     Vehicle RC',style: robotoMediumBlack,))),
                            SizedBox(
                                height: height*0.05,
                                width: width*0.16,
                                child: const Icon(Icons.navigate_next))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: height*0.05,
                                width: width*0.3,
                                child: const Center(child: Text('     Insurance',style: robotoMediumBlack,))),
                            SizedBox(
                                height: height*0.05,
                                width: width*0.16,
                                child: const Icon(Icons.navigate_next))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: height*0.05,
                                width: width*0.3,
                                child: const Center(child: Text('Photos',style: robotoMediumBlack,))),
                            SizedBox(
                                height: height*0.05,
                                width: width*0.16,
                                child: const Icon(Icons.navigate_next))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:height*0.02,),
                SizedBox(
                  height: height*0.04,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text('Others',style: robotolargeBlack),
                  ),
                ),
                SizedBox(height:height*0.02,),
                Card(
                  color: ColorConstant.WHITE_COL0R,
                  child:SizedBox(
                    height: height*0.2,
                    width: width*0.9,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height*0.08,
                          child: Padding(
                            padding:EdgeInsets.only(left:width*0.03),
                            child: Row(
                              children: [
                                Container(
                                  height: height*0.06,
                                  width: width*0.15,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorConstant.Black_COLOR
                                  ),
                                  child: const Icon(Icons.manage_accounts_sharp,color: ColorConstant.WHITE_COL0R,size: 30,),
                                ),
                                SizedBox(
                                  height: height*0.08,
                                  width: width*0.6,
                                  child: Padding(
                                    padding:EdgeInsets.only(top:height*0.02,left:width*0.05),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: "About\n",
                                        style:   robotoBold,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '7.23.0',
                                            style:robotoBlack,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey[300],),
                        InkWell(
                          onTap: (){

                          },
                          child:  SizedBox(
                            height: height*0.08,
                            child: Padding(
                              padding:EdgeInsets.only(left:width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: height*0.06,
                                    width: width*0.15,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorConstant.Black_COLOR
                                    ),
                                    child: const Icon(Icons.support_agent,color: ColorConstant.WHITE_COL0R,size: 30,),
                                  ),
                                  SizedBox(
                                    height: height*0.08,
                                    width: width*0.6,
                                    child: Padding(
                                      padding:EdgeInsets.only(top:height*0.02,left:width*0.05),
                                      child: RichText(
                                        text: const TextSpan(
                                          text: "Customer Support\n",
                                          style:   robotoBold,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Customer service available',
                                              style:robotoBlack,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                ColorButton(onTap: () {
                }, text: 'Logout', btnColor: ColorConstant.Green_BACKGROUND, textColor: null,),
                SizedBox(height: height*0.02,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
