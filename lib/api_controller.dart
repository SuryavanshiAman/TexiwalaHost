import "dart:convert";

// import "package:another_stepper/utils/utils.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/foundation.dart";
import "package:http/http.dart" as http;
import "package:shared_preferences/shared_preferences.dart";
import "package:taxiwalahost/Res/api_url.dart";
import "package:taxiwalahost/Res/utils.dart";
import "package:taxiwalahost/Route/RouteNames.dart";



class ApiController{


  bool isloading =false;
  Future sendOtpOnPhone(String phone) async {
    print(phone);
    print("Wowphone");
    try {
      final response = await http
          .get(
        Uri.parse('${ApiUrl.sendOtp}mobile=$phone&digit=4&mode=test'),
      )
          .timeout(const Duration(seconds: 10));
      print(response);
      print("Otpresponse");
      if (response.statusCode == 200) {
        return Utils.showSuccessToast('Otp send on $phone');
      } else {
        throw Exception('Failed to send otp');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      throw Exception('No Internet connection');
    }
  }

  /// verify otp

  Future verifyOtp(context, String phone, String otpCon, String userId,
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
      if (status == "0") {
        Navigator.pushNamed(context, RoutesName.SignupPage,
            arguments: {"phone": phone, "userid": userId});
        print(phone);
        print("👍👍👍phone");
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => RegisterPage(
        //
        // )));
      } else {
        final prefs = await SharedPreferences.getInstance();
        const key = 'userid';
        final userid = userId;
        prefs.setString(key, userid);
        // final userPref = Provider.of<UserViewProvider>(context, listen: false);
        // userPref.saveUser(AuthModel(userid: data['userid'].toString()));
        print("ooo");
        print(userid);
        print("ooo");
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
      }
    } else {

    }
  }

}