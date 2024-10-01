import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taxiwalahost/Provider/login_provider.dart';
import 'package:taxiwalahost/Provider/register_provider.dart';
import 'package:taxiwalahost/Provider/send_host_document_provider.dart';
import 'package:taxiwalahost/Provider/send_otp_provider.dart';
import 'package:taxiwalahost/Provider/send_pilot_document_provider.dart';
import 'package:taxiwalahost/Provider/verify_otp_provider.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Route/Rrotes.dart';
import 'package:taxiwalahost/test_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context)=>LoginProvider()),
        ChangeNotifierProvider(create: (context)=>RegisterProvider()),
        ChangeNotifierProvider(create: (context)=>SendOtpProvider()),
        ChangeNotifierProvider(create: (context)=>VerifyOtpProvider()),
        ChangeNotifierProvider(create: (context)=>DocumentProvider()),
        ChangeNotifierProvider(create: (context)=> PilotDocumentProvider()),

      ],
      child: MaterialApp(
        title: 'TexiwalaHost',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(scrolledUnderElevation: 0.0,),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesName.splash,
        routes: Routers.routes,

        // home: Pilot(),
      ),
    );
  }
}