


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';

class SendOtpProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

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
}