import 'package:flutter/material.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Pilot/ConstantSteper.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Vehiclevarification extends StatefulWidget {
  const Vehiclevarification({super.key});

  @override
  State<Vehiclevarification> createState() => _VehiclevarificationState();
}

class _VehiclevarificationState extends State<Vehiclevarification> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
            children: [
              SizedBox(height: height*0.04,),
              Container(
                  height: height*0.08,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context, RoutesName.Afteruploaded);
                          },
                          child: Container(
                            height: height*0.15,
                            width: width*0.15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_back,size: width*0.08,),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: width*0.38,
                          child: Center(child: Text('Step 3/3',style: robotoGrey,)),
                        ),
                      ]
                  )
              ),
              Container(
                height: height*0.04,
                width: width*0.9,
                child: Text("Verification Status",style: robotoBlackProfile,),
              ),
              Container(
                height: height*0.62,
                width: width*0.9,
                child: Testinghomestep(),
              ),
              SizedBox(height: height*0.1,),
              CustomButton(onTap: () {
                Navigator.pushNamed(context, RoutesName.PioltBottom);
              }, text: 'Countinue', btnColor: ColorConstant.Green_BACKGROUND, textColor: ColorConstant.WHITE_COL0R,),
            ]
        )
    );
  }
}
