import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';

class PilotDocumentProvider with ChangeNotifier {
  PilotDocument(
      context,
      String firstName,
      String lastName,
      String phone,
      String email,
      String model,
      String vNumber,
      String vdesc,
      String vImage,
      String RcImage,
      String Insurance,String Licence,String contactOne,String contactTwo) async {
    print("Chala");
    final response = await http.post(
      // Uri.parse(ApiUrl.sendDocument),
      Uri.parse(ApiUrl.pilotDocument),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "firstname": firstName,
        "lastname": lastName,
        "mobile": phone,
        "email": email,
        "vehicleModel": model,
        "vehicleNumber": vNumber,
        "vahicleDescription": vdesc,
        "Vehicleimage": vImage,
        "Vehiclercimage": RcImage,
        "Vehicleinsuranceimage": Insurance,
        "driverimage": Licence,
        "emergency_contect_2": contactOne,
        "emergency_contect_1": contactTwo
      }),
    );
    final data = jsonDecode(response.body);
    print(data);
    if (data["error"] == "200") {
      print("good");

      print("👑👑👑👑👑👑👑👑👑👑👑");
      Utils.flushBarSuccessMessage(data['msg'], context, Colors.white);
      Navigator.pushNamed(context, RoutesName.Vehiclevarification);
      // Navigator.pushNamed(context, RoutesName.Verification_page,arguments:{
      //   "phone":data['data']["mobile"],
      //   "error":data["error"],
      //   "userid":data['data']['id'],
      //   "status":data['data']['status'].toString()
      // });
    } else {
      print("bad");
      print(data["eroor"]);
      Utils.flushBarErrorMessage(data['msg'], context, Colors.white);
      // Navigator.pushNamed(context, RoutesName.Verification_page,arguments:{
      //   "phone":mobile,
      //   "error":data["error"],
      //   "userid":"",
      //   "status":""
      // } );
    }
    print(data);
  }
}
