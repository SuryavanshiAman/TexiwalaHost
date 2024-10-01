// ignore_for_file: camel_case_types, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  void initState() {
    super.initState();
    splash();
  }
  splash() async {
    Timer(const Duration(seconds: 3), ()=> Navigator.pushReplacementNamed(context, RoutesName.Onbording)
    );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height*0.3),
          Container(
            height: height*0.3,
            width: width*0.8,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Images.App_logo),
              ),
            ),
          ),
          Text('TAXIWALA',style: robotoBold.copyWith(fontSize: width*0.1,color: Colors.green[900],letterSpacing: 7)),
          Text('Rent Drive Go-',style:robotoGrey),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height*0.03,
                width: width*0.08,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(Images.Indiaflag),
                    )
                ),
              ),
              SizedBox(
                height: height*0.12,
                child: const Center(child: Text('Made in India',style: robotoBold)),
              ),
            ],
          ),
          SizedBox(height: height*0.03)
        ],
      ),
    );
  }
}
