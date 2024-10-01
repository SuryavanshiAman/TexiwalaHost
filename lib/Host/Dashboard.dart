import 'package:flutter/material.dart';
import 'package:taxiwalahost/Host/Dashbordmain.dart';
import 'package:taxiwalahost/Host/Dashbordorder.dart';
import 'package:taxiwalahost/Host/Dashbordprofile.dart';
import 'package:taxiwalahost/Host/Dashbordride.dart';
import 'package:taxiwalahost/Host/Dashbordsummary.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';

class DashboardBottom extends StatefulWidget {
  const DashboardBottom({Key? key}) : super(key: key);

  @override
  _DashboardBottomState createState() => _DashboardBottomState();
}

class _DashboardBottomState extends State<DashboardBottom> {
  int pageIndex = 0;

  final pages = [
    const Dashboardprofile(),
  const Dashboardorder(),
    const Dashbordmain(),
  const Dashboardride(),
  const Dashboardsummary(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: ColorConstant.WHITE_COL0R,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? Container(
                  height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Icon(
                                    Icons.account_circle,
                                    color: ColorConstant.WHITE_COL0R,
                                    size: 25,
                                  ),
                  )
                  : const Icon(
                Icons.account_circle_outlined,
                color: ColorConstant.Black_COLOR,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                    child: const Icon(
                                    Icons.shopping_bag,
                                    color: ColorConstant.WHITE_COL0R,
                                    size:25,
                                  ),
                  )
                  : const Icon(
                Icons.shopping_bag_outlined,
                color: ColorConstant.Black_COLOR,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                    child: const Icon(
                                    Icons.dashboard,
                                    color: ColorConstant.WHITE_COL0R,
                                    size: 25,
                                  ),
                  )
                  : const Icon(
                Icons.dashboard_outlined,
                color: ColorConstant.Black_COLOR,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                    child: const Icon(
                                    Icons.headset_mic,
                                    color: ColorConstant.WHITE_COL0R,
                                    size: 25,
                                  ),
                  )
                  : const Icon(
                                  Icons.headset_mic_outlined,
                                  color: ColorConstant.Black_COLOR,
                                  size: 25,
                                ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                    child: const Icon(
                                    Icons.insert_chart,
                                    color: ColorConstant.WHITE_COL0R,
                                    size:25,
                                  ),
                  )
                  : const Icon(
                Icons.bar_chart,
                color: ColorConstant.Black_COLOR,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
