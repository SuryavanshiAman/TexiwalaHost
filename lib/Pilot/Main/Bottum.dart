import 'package:flutter/material.dart';
import 'package:taxiwalahost/Pilot/Main/Dashbord.dart';
import 'package:taxiwalahost/Pilot/Main/Homepage.dart';
import 'package:taxiwalahost/Pilot/Main/Incentives.dart';
import 'package:taxiwalahost/Pilot/Main/Notification.dart';
import 'package:taxiwalahost/Pilot/Main/Profile.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';

class PioltBottom extends StatefulWidget {
  const PioltBottom({Key? key}) : super(key: key);

  @override
  _PioltBottomState createState() => _PioltBottomState();
}

class _PioltBottomState extends State<PioltBottom> {
  int pageIndex = 0;

  final pages = [
      Homepage(),
    const Dashpages(),
    const Incentives(),
    const Noti(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(
                  color: ColorConstant.Green_BACKGROUND,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.home,
                  color: ColorConstant.WHITE_COL0R,
                  size: 25,
                ),
              )
                  : const Icon(
                Icons.home,
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
                decoration: const BoxDecoration(
                  color: ColorConstant.Green_BACKGROUND,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.watch_later,
                  color: ColorConstant.WHITE_COL0R,
                  size:25,
                ),
              )
                  : const Icon(
                Icons.watch_later,
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
                decoration: const BoxDecoration(
                  color: ColorConstant.Green_BACKGROUND,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.monetization_on_outlined,
                  color: ColorConstant.WHITE_COL0R,
                  size: 25,
                ),
              )
                  : const Icon(
                Icons.monetization_on,
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
                decoration: const BoxDecoration(
                  color: ColorConstant.Green_BACKGROUND,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.notifications,
                  color: ColorConstant.WHITE_COL0R,
                  size: 25,
                ),
              )
                  : const Icon(
                Icons.notifications,
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
                decoration: const BoxDecoration(
                  color: ColorConstant.Green_BACKGROUND,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.person,
                  color: ColorConstant.WHITE_COL0R,
                  size:25,
                ),
              )
                  : const Icon(
                Icons.person,
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
