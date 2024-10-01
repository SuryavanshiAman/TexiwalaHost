import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantButton/Constanstgraph.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Dashbordmain extends StatefulWidget {
  const Dashbordmain({super.key});

  @override
  State<Dashbordmain> createState() => _DashbordmainState();
}

class _DashbordmainState extends State<Dashbordmain> {
  String? selectedValue;
  String? cashvalue;

  List<Map<String, dynamic>> dropdownItems = [
  {'name': 'All'},
  {'name': 'Jan'},
  {'name': 'Feb'},
  {'name': 'March'},
  ];
  double height = 170.0; // initial height in centimeters
  double weight = 70.0; // initial weight in kilograms
  int age = 25;
  int selectedAge = 25;
  // initial age
  double bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Dashboard',style: robotoBlackProfile),
        actions: [
          TextButton.icon(onPressed: (){}, icon: const Icon(Icons.notifications_active,color: ColorConstant.Black_COLOR,size: 26,), label:const Text(''))
        ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.003,
            color: ColorConstant.WHITE_BACKGROUND,
          ),
          SizedBox(height: height*0.02,),
          Container(
            height: height*0.15,
            width: width*0.8,
            decoration: const BoxDecoration(
              color: ColorConstant.Green_BACKGROUND,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                SizedBox(height: height*0.03,),
                const Text('Edrin Rodger',style: robotoMediumExtraWhite,),
                const Text('Thu-12/05/23-Mon-16/5/23',style: robotoMediumWhite,),
              ],
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
                  SizedBox(
                    height: height*0.05,
                    width: width*0.87,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Activity',style: robotoBold,),
                        Container(
                          height: height * 0.05,
                          width: width * 0.36,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              dropdownColor: Colors.white,
                              hint: const Text("  Mounth", style: robotoBold),
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
                      ],
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height*0.30,
                    width: width*0.87,
                    child: ConstantGraph(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.01,),
          CustomButton(onTap: () {

          }, text: 'Control ride', btnColor: ColorConstant.Green_BACKGROUND, textColor: ColorConstant.WHITE_COL0R,),
          SizedBox(height: height*0.01,),
          CustomButton(onTap: () {

          }, text: 'Need assistance?', btnColor: ColorConstant.RED_COLOR, textColor:ColorConstant.Black_COLOR),
        ],
      ),
    );
  }
}
