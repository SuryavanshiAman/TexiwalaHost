
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
class VerifyOtpProvider with ChangeNotifier{
  Future verifyOtp(context, String phone, String otpCon, String userId,String eroor,
      String status) async {
    print(otpCon);
    print("otpCon");
    final response = await http.post(
      Uri.parse('${ApiUrl.verifyOtp}mobile=$phone&otp=$otpCon'),
    );
    final data = jsonDecode(response.body);
    print("🎅🎅🎅");
    print(data);
    if (data['error'] == '200') {
      if (eroor == "400") {
        Navigator.pushNamed(context, RoutesName.SignupPage,
            arguments: {"phone": phone, "userid": userId});
        print(phone);
        print("👍👍👍phone");

      }
      else {
        final prefs = await SharedPreferences.getInstance();
        const key = 'userid';
        final userid = userId;
        prefs.setString(key, userid);
        if(status=="1"){
        Navigator.pushNamed(context, RoutesName.host);
        }else{
    Navigator.pushNamed(context, RoutesName.Pilot);
    }


        print("ooo");
        print(userid);
        print("ooo");

      }
    } else {
      Utils.showErrorToast('please enter valid otp');
    }
  }
}