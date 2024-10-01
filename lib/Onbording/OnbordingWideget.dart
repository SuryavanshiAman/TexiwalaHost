import 'package:flutter/material.dart';
import 'package:taxiwalahost/Onbording/Onbording.dart';



class OnBoardingWidget extends StatelessWidget {
  final OnBoardingModel onBoardingModel;
  OnBoardingWidget({ required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(onBoardingModel.imagePath),
        ),
      ),
    );
  }
}