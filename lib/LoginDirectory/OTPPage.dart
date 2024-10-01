import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/PinFiled.dart';
import 'package:taxiwalahost/Provider/send_otp_provider.dart';
import 'package:taxiwalahost/Provider/verify_otp_provider.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';

import 'package:taxiwalahost/Theme/Dimensions.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';


class Verification_page extends StatefulWidget {
  const Verification_page({super.key});

  @override
  State<Verification_page> createState() => _Verification_pageState();
}

class _Verification_pageState extends State<Verification_page> {

@override
void initState() {
  super.initState();
  Future.delayed(Duration.zero,(){
    Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // String phone = ModalRoute.of(context)?.settings.arguments as String;
    _sendOtp(args['phone']);
  });


  // Call the method to send OTP with the retrieved phone number

}

Future<void> _sendOtp(String phone) async {
  // Get the provider instance
  final sendOtpProvider = Provider.of<SendOtpProvider>(context, listen: false);

  // Call the method to send OTP
  try {
    await sendOtpProvider.sendOtpOnPhone(phone);
  } catch (error) {
    // Handle errors here
    print('Error sending OTP: $error');
  }
}
List<TextEditingController> otpCon = List.generate(
  4,
      (index) => TextEditingController(),
);
//   void initState() {
//   print("👩👩");
//   _sendOtp();
//     // TODO: implement initState
//     super.initState();
//   }
// Future<void> _sendOtp() async {
//   // Get the provider instance
//   final arguments = ModalRoute.of(context)!.settings.arguments;
//   final sendOtpProvider = Provider.of<SendOtpProvider>(context, listen: false);
//
//   // print(arguments);
//   // print("Otparguments");
//   // Call the method to send OTP
//   try {
//     await sendOtpProvider.sendOtpOnPhone("ggg");
//   } catch (error) {
//     // Handle errors here
//     print('Error sending OTP: $error');
//   }
// }
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String error= args["error"];
    String phone= args["phone"];
    String userId= args["userid"];
    String status= args["status"].toString();

    final Verify = Provider.of<VerifyOtpProvider>(context);
    print(phone);
    print("phone");
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final height = MediaQuery.of(context).size.height;
    return
      SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal:Dimensions.PADDING_SIZE_EXTRA_LARGE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.15),
                Center(
                  child: Text("Verification",
                    style: robotoExtraLarge,
                  ),
                ),
                SizedBox(height: height*0.01,),
                RichText(
                  text:  TextSpan(
                    text: "Enter the OTP sent via SMS to:  ",
                    style:   robotosmallGrey,
                    children: <TextSpan>[
                      TextSpan(
                        text: '+91 $phone',
                        style:robotoBlack,
                      ),
                    ],
                  ),

                ),
                SizedBox(height: height*0.03,),
                Custom_pin_field(

                  controllers: otpCon,
                  // controllers: [
                  //   otpCont
                  // ],
                ),
                Center(
                  child: TextButton(onPressed: (){}, child: Text('Resend code',
                    style: robotoExtrasmall,
                  ) ),
                ),
                const Spacer(),
                Center(
                  child: CustomButton(onTap: () {

                    Verify.verifyOtp(context, phone,otpCon.map((e) => e.text).join().toString(), userId,error, status);
                    // Navigator.pushNamed(context, RoutesName.SignupPage,arguments: arguments);
                    print("arguments");
                    print(phone);
                    print(otpCon.map((e) => e.text).join().toString());
                    print(userId);
                    print(error);
                    print(status);
                    print("arguments");
                  }, text: 'Verify',
                    textColor: Colors.white, btnColor: ColorConstant.Green_BACKGROUND,
                  ),
                ),
                SizedBox(height: height*0.04,),
              ],
            ),
          ),
        ),
      );
  }
}
