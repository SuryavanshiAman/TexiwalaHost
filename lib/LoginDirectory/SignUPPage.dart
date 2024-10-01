import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/ApiConstant.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Provider/register_provider.dart';

import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/Dimensions.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';
import 'package:http/http.dart'as http;


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameCont =TextEditingController();
  TextEditingController emailCont =TextEditingController();
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  bool change= false;
  String changecolor="";
  String status="";
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String phone= args["phone"];
    final Register = Provider.of<RegisterProvider>(context);
    final arguments = ModalRoute.of(context)!.settings.arguments;
    print(arguments);
    print("RegisterArguments");
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
                SizedBox(height: height*0.1,),
                Text('Create Your account',
                  style: robotoExtraLarge,
                ),
                SizedBox(height: height*0.01,),

                 Text('Enter your name and email to sign up',
                  style: robotoSmallGrey,
                ),
                SizedBox(height: height*0.025,),

                Container(
                  height: height*0.22,
                  width: width*0.99,

                  decoration: BoxDecoration(
                      // color: Colors.red,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,20,8,8),
                    child: Column(
                      children: [
                        Constant_text_field(
                          controller: nameCont,
                          keyboardType: TextInputType.name,
                          hintText: 'Name',
                          filled: true,
                          fillColor: ColorConstant.WHITE_BACKGROUND,
                          validator: Validate_Name,
                          borderColor: Colors.white,
                        ),
                        SizedBox(height:  height*0.025,),
                        Constant_text_field(
                          controller: emailCont,
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Email',
                          filled: true,
                          fillColor: ColorConstant.WHITE_BACKGROUND,
                          validator: Validate_Email,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height*0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          change=true;
                          changecolor="q";
                          status="1";
                        });
                      },
                      child: Container(
                        height: height*0.07,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          color: changecolor=="q"? ColorConstant.Green_BACKGROUND:Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text('Host',style: robotoMediumExtraWhite,)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          change=true;
                          changecolor="w";
                          status="2";
                        });
                      },
                      child: Container(
                        height: height*0.07,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          color: changecolor=="w"? ColorConstant.Green_BACKGROUND:Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text('Pilot',style: robotoMediumExtraWhite,)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.05,),
              ],
            ),
          ),
        ),
        floatingActionButton: change==true?FloatingActionButton.extended(
          backgroundColor: ColorConstant.Green_BACKGROUND,
          onPressed: () {
            Register.
                Register(context, phone.toString(), nameCont.text, emailCont.text, status.toString());
            // Register(arguments.toString(),nameCont.text,emailCont.text,status.toString());
            print(arguments);
            print(status);
            print("mobile");
            // changecolor=="q"?Navigator.pushNamed(context, RoutesName.host):changecolor=="w"?Navigator.pushNamed(context, RoutesName.Pilot):null;
            setState(() {
              change=false;
            });
          },
          label: Container(
              width: width*0.7,
              child: Center(child: const Text('Book now',style: robotoMediumExtraWhite,))),
        ):Container(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

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
  String? Validate_Email(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }
  // Register( String mobile ,String nameCont,String emailCont,String status )async{
  //   final response=await http.post(
  //     Uri.parse(Apiconst.register),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       "mobile":mobile,
  //       "name":nameCont,
  //       "email":emailCont,
  //       "status":status
  //     }),
  //   );
  //   final data=jsonDecode(response.body);
  //   print(data);
  //   if(data["error"]=='200'){
  //     print("good");
  //
  //     final prefs = await SharedPreferences.getInstance();
  //     final key = 'userId';
  //     final userId = data['userid'];
  //     prefs.setString(key, userId);
  //     print(userId);
  //     print("👑👑👑👑👑👑👑👑👑👑👑");
  //     Fluttertoast.showToast(
  //         msg: data['message'],
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.green,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //     // Navigator.pushNamed(context, RoutesName.host);
  //     changecolor=="q"?Navigator.pushNamed(context, RoutesName.host):
  //     Navigator.pushNamed(context, RoutesName.Pilot);
  //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
  //   }else{
  //     print("bad");
  //     Fluttertoast.showToast(
  //         msg: data['message'],
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //   }
  //   print(data);
  // }
}
