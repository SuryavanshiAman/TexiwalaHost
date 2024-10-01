import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/Constanttime.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';


class Dashboardride extends StatefulWidget {
  const Dashboardride({super.key});

  @override
  State<Dashboardride> createState() => _DashboardrideState();
}

class _DashboardrideState extends State<Dashboardride> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Control ride', style: robotoBlackProfile),
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active, color: ColorConstant.Black_COLOR, size: 26),
              label: const Text(''),
            )
          ],
        ),
      ),
      body: Container(
        height: height * 0.8,
        color: ColorConstant.WHITE_BACKGROUND,
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            const Center(child: Text('June', style: robotoBold)),
            SizedBox(height: height * 0.02),
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
                        color: ColorConstant.WHITE_COL0R,
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
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('  Disable ride', style: robotoMediumBlack),
                    SizedBox(
                      width: width*0.2,
                      child: FlutterSwitch(
                        width: width * 0.1,
                        height: height * 0.023,
                        toggleSize: height * 0.014,
                        value: status,
                        borderRadius: 20.0,
                        padding: 2.0,
                        toggleColor: ColorConstant.Black_COLOR,
                        switchBorder: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        toggleBorder: Border.all(
                          color: ColorConstant.Black_COLOR,
                          width: 20.0,
                        ),
                        activeColor: ColorConstant.Green_BACKGROUND,
                        inactiveColor: ColorConstant.WHITE_COL0R,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
                   Card(
                   elevation: 2,
                        margin: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
                        child: Padding(
                        padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Padding(
                                padding:EdgeInsets.only(right: width*0.65),
                                child: const Text('Timing',style: robotoMediumBlack,),
                              ),
                              SizedBox(height: height*0.02,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('   From',style: robotoBold,),
                                  Text('TO                                 ',style: robotoBold,),
                                ],
                              ),
                              SizedBox(height: height*0.02,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: height*0.05,
                                    width: width*0.40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: ColorConstant.WHITE_BACKGROUND,
                                    ),
                                    child: Time(),
                                  ),
                                  Container(
                                    height: height*0.05,
                                    width: width*0.40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: ColorConstant.WHITE_BACKGROUND,
                                    ),
                                    child: Time(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                   ),
          ],
        ),
      ),
    );
  }
}
