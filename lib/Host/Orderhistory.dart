import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';
void main() {
  runApp(const Orderhistory());
}


class Orderhistory extends StatefulWidget {
  const Orderhistory({super.key});

  @override
  State<Orderhistory> createState() => _OrderhistoryState();
}

class _OrderhistoryState extends State<Orderhistory> {
  final List<String> items = ['September', 'August', 'July', 'June'];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.1),
        child: AppBar(
          centerTitle: true,
          title: Text('Order history',style: robotoBlackProfile),),
      ),
      body: Container(
        height: height*1,
        width: MediaQuery.of(context).size.width,
        color: ColorConstant.WHITE_BACKGROUND,
        child:ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(right: width*0.6,top: height*0.035),
                    child: Text(items[index],style: robotoMediumBlack,),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.Orderhistorydetailed);
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: height*0.01, horizontal:width*0.05),
                      child: Padding(
                        padding: EdgeInsets.all(width*0.01),
                        child: Column(
                          children: [
                            SizedBox(height: height*0.01,),
                            SizedBox(
                              height: height*0.04,
                              width: MediaQuery.of(context).size.width,
                              child: Text('    Thursday,12/5/23-Monday 16/5/23',style: robotoBold,),
                            ),
                            SizedBox(height: height*0.01,),
                            SizedBox(
                              height: height*0.12,
                              child: Row(
                                children: [
                                  Container(
                                    height:  height*0.1,
                                    width: width*0.1,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(Images.hello),
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                    height: height*0.14,
                                    width: width*0.7,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: width*0.8,
                                          height: height*0.049,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.WHITE_BACKGROUND,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('    Pick up date',style: robotoBlack,),
                                              Text(':15/7/23               ',style: robotoBold,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: height*0.01,),
                                        Container(
                                          width: width*0.8,
                                          height: height*0.049,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.WHITE_BACKGROUND,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('    Drop date',style: robotoBlack,),
                                              Text(':17/7/23               ',style: robotoBold,),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height*0.04,
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.horizontal_distribute_outlined),
                                        Text('  200 Km'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.currency_rupee),
                                        Text('14,000'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.alarm),
                                        Text('  2days'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
  String? Validate_Name(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
  String? Validate_Distance(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
}
