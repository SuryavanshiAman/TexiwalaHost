import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';


class Dashboardsummary extends StatefulWidget {
  const Dashboardsummary({super.key});

  @override
  State<Dashboardsummary> createState() => _DashboardsummaryState();
}

class _DashboardsummaryState extends State<Dashboardsummary> {
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
          title: Text('Account summary', style: robotoBlackProfile),
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.notifications_active, color: ColorConstant.Black_COLOR, size: 26),
              label: Text(''),
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
            Container(
              child: Center(child: Text('June', style: robotoBold)),
            ),
            SizedBox(height: height * 0.02),
            Container(
              height: height * 0.1,
              width: width * 4.8,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                        color: ColorConstant.WHITE_COL0R,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Wed', style: robotoBold),
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
                child: Container(
                  height: height*0.09,
                  width: width*0.87,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Disable ride', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Number of rides', style: robotoMediumBlack),
                          Text('4',style: robotoMediumBlack,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: height*0.26,
                  width: width*0.87,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Earnings', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Incentives earned', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Tax deducation', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Commission paid', style: robotoMediumBlack),
                          Text('₹4000.00',style: robotoMediumBlack,)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Date Pending', style: robotoMediumBlack),
                          Text('21/6/23',style: robotoMediumBlack,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
