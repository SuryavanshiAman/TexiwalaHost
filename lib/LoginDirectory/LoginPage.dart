// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Provider/login_provider.dart';
import 'package:taxiwalahost/Res/utils.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/Dimensions.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  TextEditingController mobile =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formkey,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal:Dimensions.PADDING_SIZE_EXTRA_LARGE),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.1),
                Center(
                  child: Text('Welcome back',
                    style: robotoExtraLarge,
                  ),
                ),
                SizedBox(height: height*0.02,),

                 Center(
                   child: Text('Enter your phone number to login',
                    style: robotoRegular.copyWith(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                   ),
                 ),
                SizedBox(height: height*0.03,),
                Center(
                  child: Constant_text_field(
                    controller: mobile,
                    keyboardType: TextInputType.number,
                    hintText: 'Phone number',
                    maxLength: 10,
                    filled: true,
                    fillColor: ColorConstant.WHITE_BACKGROUND,
                    validator:  Validate_Login,
                    borderColor: CupertinoColors.white,
                  ),
                ),
                Center(
                  child: Text("You will recive an SMS verification that may apply message and data rates",
                    style: robotoRegular.copyWith(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Center(
                  child: CustomButton(onTap: () {
                    if(mobile.text.length != 10 || mobile.text.isEmpty){
                      Utils.flushBarErrorMessage("Please enter  Phone number", context, Colors.white);
                    }else{

                      loginProvider.Login(context, mobile.text);

                      print(mobile.text);
                      print("rrrrrrrrr");
                    }

                  }, text: 'Get OTP',
                    textColor: Colors.white, btnColor: ColorConstant.Green_BACKGROUND,
                  ),
                ),
                SizedBox(height: height*0.06,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  String? Validate_Login(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
}
