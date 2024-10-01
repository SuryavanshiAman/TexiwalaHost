
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';

class LoginProvider with ChangeNotifier{
  Login(context, String mobile  )async{
    print("Chala");
    final response=await http.post(
      Uri.parse(ApiUrl.login),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "mobile":mobile,

      }),
    );
    final data=jsonDecode(response.body);
    print(data);
    if(data["error"]=='200'){
      print("good");

      print("👑👑👑👑👑👑👑👑👑👑👑");
      Utils.flushBarSuccessMessage(data['message'],context, Colors.white);
     Navigator.pushNamed(context, RoutesName.Verification_page,arguments:{
       "phone":data['data']["mobile"],
       "error":data["error"],
       "userid":data['data']['id'],
       "status":data['data']['status'].toString()
     });
    }else{
      print("bad");
      print(data["eroor"]);
      Utils.flushBarErrorMessage(data['message'], context, Colors.white);
      Navigator.pushNamed(context, RoutesName.Verification_page,arguments:{
        "phone":mobile,
        "error":data["error"],
        "userid":"",
        "status":""
      } );
    }
    print(data);
  }
}