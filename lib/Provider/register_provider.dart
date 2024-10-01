
import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiwalahost/Res/api_url.dart';
import 'package:taxiwalahost/Res/utils.dart';

import '../Route/RouteNames.dart';

class RegisterProvider with ChangeNotifier{
  Register(context, String mobile ,String nameCont,String emailCont,String status )async{
    final response=await http.post(
      Uri.parse(ApiUrl.register),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "mobile":mobile,
        "name":nameCont,
        "email":emailCont,
        "status":status
      }),
    );
    final data=jsonDecode(response.body);
    print(data);
    if(data["error"]=='200'){
      print("good");

      final prefs = await SharedPreferences.getInstance();
      final key = 'userId';
      final userId = data['userid'];
      prefs.setString(key, userId);
      print(userId);
      print("👑👑👑👑👑👑👑👑👑👑👑");
      Utils.flushBarSuccessMessage(data['message'],context, Colors.white);

      data['status']=="1"?Navigator.pushNamed(context, RoutesName.host):
      Navigator.pushNamed(context, RoutesName.Pilot);
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
    }else{
      print("bad");
     Utils.flushBarErrorMessage(data['message'], context, Colors.white);
    }
    print(data);
  }
}