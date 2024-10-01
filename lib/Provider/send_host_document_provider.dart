
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Host/Afteruoloaded.dart';
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';

class DocumentProvider with ChangeNotifier{
  Document(context, _adharImages , _RcImages, _InsuranceImages, _PassbookImages, _SixPhotoImages )async{
    print(_adharImages);
    print(_RcImages);
    final prefs = await SharedPreferences.getInstance();
    final userid = prefs.getString("userid");
    print(userid);
    print("Chala");
    final response=await http.post(
      // Uri.parse(ApiUrl.sendDocument),
      Uri.parse("https://taxiwala.earlycarehealth.in/addHostImage"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "aadharimage":_adharImages,
        "vehiclerc":_RcImages,
        "vehicleinsurance":_InsuranceImages,
        "passbook":_PassbookImages,
        "vehiclephoto":_SixPhotoImages,
        "userid":userid.toString(),
      }),
    );
    final data=jsonDecode(response.body);
    print(data);
    if(data["status"]==200){
      print("good");

      print("👑👑👑👑👑👑👑👑👑👑👑");
      Utils.flushBarSuccessMessage(data['message'],context, Colors.white);
      Navigator.pushReplacementNamed(context, RoutesName.Verificationstep);
      // Navigator.pushNamed(context, RoutesName.Verification_page,arguments:{
      //   "phone":data['data']["mobile"],
      //   "error":data["error"],
      //   "userid":data['data']['id'],
      //   "status":data['data']['status'].toString()
      // });
    }else{
      print("bad");
      print(data["eroor"]);
      Utils.flushBarErrorMessage(data['message'], context, Colors.white);
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