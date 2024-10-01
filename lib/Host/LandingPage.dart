import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  String? selectedValue;
  String? cashvalue;

  List<Map<String, dynamic>> dropdownItems = [
    {'name': 'All'},
    {'name': 'Hyundai'},
    {'name': 'Ford'},
    {'name': 'Toyota'},
  ];
  List<Map<String, dynamic>> cashItems = [
    {'name': 'All'},
    {'name': '2016'},
    {'name': '2017'},
    {'name': '2018'},
    {'name': '2019'},
    {'name': '2020'},
    {'name': '2021'},
    {'name': '2022'},
    {'name': '2023'},
    {'name': '2024'},
  ];
  double height = 170.0; // initial height in centimeters
  double weight = 70.0; // initial weight in kilograms
  int age = 25;
  int selectedAge = 25;
  // initial age
  double bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height * 1.4,
            child: Column(
              children: [
              Container(
              height: height*0.25,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: ColorConstant.WHITE_COL0R,
                  image: DecorationImage(
                      image: AssetImage(Images.Summary)
                  )
              ),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.02),
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Let\'s see how much you could earn\nby sharing your car',
                        style: robotoMediumBlack,),
                      SizedBox(height: height * 0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height * 0.05,
                            width: width * 0.199,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                dropdownColor: Colors.white,
                                hint: Text("  Manufacturer", style: robotoBold),
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                  if (kDebugMode) {
                                    print(selectedValue);
                                  }
                                },
                                items: dropdownItems
                                    .map<DropdownMenuItem<String>>((item) {
                                  return DropdownMenuItem<String>(
                                    value: item['name'],
                                    child: Text(" " + item['name'],
                                        style: robotoRegular.copyWith(
                                            fontSize: width * 0.03,
                                            color: ColorConstant.Black_COLOR)),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.05,
                            width: width * 0.199,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                dropdownColor: Colors.white,
                                hint: Text("  Model", style: robotoBold),
                                value: cashvalue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    cashvalue = newValue;
                                  });
                                  if (kDebugMode) {
                                    print(cashvalue);
                                  }
                                },
                                items: cashItems
                                    .map<DropdownMenuItem<String>>((item) {
                                  return DropdownMenuItem<String>(
                                    value: item['name'],
                                    child: Text(" " + item['name'],
                                        style: robotoRegular.copyWith(
                                            fontSize: width * 0.025,
                                            color: ColorConstant.Black_COLOR)),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(height: height * 0.01,),
            CustomButton(onTap: () {},
              text: 'Cheek availability',
              btnColor: ColorConstant.Black_COLOR, textColor: ColorConstant.WHITE_COL0R,),
            SizedBox(height: height * 0.02,),
            Padding(
              padding: EdgeInsets.only(right: width * 0.16),
              child: const Text(
                "Potential monthly erning", style: robotoMediumBlack,),
            ),
            SizedBox(height: height * 0.01,),
            Text("3 days", style: robotoBlackProfile,),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: ColorConstant.Green_BACKGROUND,
                inactiveTrackColor: Colors.grey,
                thumbColor: ColorConstant.Green_BACKGROUND,
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Slider(
                value: age.toDouble(),
                min: 1.0,
                max: 100.0,
                divisions: 99,
                onChanged: (value) {
                  setState(() {
                    age = value.toInt();
                  });
                },
                label: age.toString(),
              ),
            ),
            Text('₹15000 - ₹20000', style: robotoMediumBlack,),
            SizedBox(height: height * 0.02,),
            Padding(
              padding: EdgeInsets.only(right: width * 0.26),
              child: Text("Meet our host", style: robotoMediumBlack,),
            ),
            Container(
             height: height*0.24,
              width: width*0.7,
              child: PageView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:height*0.23,
                      width:width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: width*0.0005),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(Images.girl),
                          ),
                          Text('    "Highly Satisfied with\ntherir outstanding service\n    and professionaliusm"',style: robotoBold,),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:height*0.2,
                      width:width*0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: width*0.0005),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(Images.girl),
                          ),
                          Text('    "Highly Satisfied with\ntherir outstanding service\n    and professionaliusm"',style: robotoBold,),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:height*0.2,
                      width:width*0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: width*0.0005),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(Images.girl),
                          ),
                          Text('    "Highly Satisfied with\ntherir outstanding service\n    and professionaliusm"',style: robotoBold,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
              ),
            ),
            SizedBox(height: height*0.01,),
          CustomButton(onTap: () {},
            text: 'Let\'s get started',
            btnColor: ColorConstant.Black_COLOR, textColor: ColorConstant.WHITE_COL0R,),
          SizedBox(height: height * 0.01,),
          CustomButton(onTap: () {
            Navigator.pushNamed(context, RoutesName.DashboardBottom);
          },
            text: 'Contact us',
            btnColor: ColorConstant.Green_BACKGROUND, textColor: ColorConstant.WHITE_COL0R,),
        ],
      ),
    ),
    ]
    ),
    );
  }
}
