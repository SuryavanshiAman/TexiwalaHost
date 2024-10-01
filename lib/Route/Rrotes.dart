import 'package:flutter/material.dart';
import 'package:taxiwalahost/Host/Afteruoloaded.dart';
import 'package:taxiwalahost/Host/Dashboard.dart';
import 'package:taxiwalahost/Host/LandingPage.dart';
import 'package:taxiwalahost/Host/Orderactiveride.dart';
import 'package:taxiwalahost/Host/Orderfinalotp.dart';
import 'package:taxiwalahost/Host/Orderhistory.dart';
import 'package:taxiwalahost/Host/Orderhistorydetailed.dart';
import 'package:taxiwalahost/Host/Orderlive.dart';
import 'package:taxiwalahost/Host/Orderotp.dart';
import 'package:taxiwalahost/Host/Orderridereview.dart';
import 'package:taxiwalahost/Host/Report%20app%20issuse.dart';
import 'package:taxiwalahost/Host/Setting.dart';
import 'package:taxiwalahost/Host/Verifcationstep.dart';
import 'package:taxiwalahost/Host/pages.dart';
import 'package:taxiwalahost/LoginDirectory/test.dart';
import 'package:taxiwalahost/Onbording/LocationScreen.dart';
import 'package:taxiwalahost/LoginDirectory/LoginPage.dart';
import 'package:taxiwalahost/LoginDirectory/OTPPage.dart';
import 'package:taxiwalahost/Onbording/Onbording.dart';
import 'package:taxiwalahost/LoginDirectory/SignUPPage.dart';
import 'package:taxiwalahost/Onbording/SlapshScreen.dart';
import 'package:taxiwalahost/Pilot/Main/Bottum.dart';
import 'package:taxiwalahost/Pilot/Main/Incentives%20descriptions.dart';
import 'package:taxiwalahost/Pilot/Main/Performance.dart';
import 'package:taxiwalahost/Pilot/Main/Settings.dart';
import 'package:taxiwalahost/Pilot/Rides/Customerpickup.dart';
import 'package:taxiwalahost/Pilot/Rides/Ride.dart';
import 'package:taxiwalahost/Pilot/Rides/RideCondformation.dart';
import 'package:taxiwalahost/Pilot/Rides/Ridemaooing.dart';
import 'package:taxiwalahost/Pilot/Rides/Ridesummary.dart';
import 'package:taxiwalahost/Pilot/Vechicleverification.dart';
import 'package:taxiwalahost/Pilot/newpages.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';

class Routers {
  static final Map<String, WidgetBuilder> routes = {
    RoutesName.splash: (context) => const Welcome_screen(),
    RoutesName.Onbording: (context) => const OnBoardingScreen(),
    RoutesName.Login: (context) => const Login(),
    RoutesName.TurnOnLoccation: (context) => const TurnOnLoccation(),
    RoutesName.Verification_page: (context) => const Verification_page(),
    RoutesName.SignupPage: (context) => const SignupPage(),
    RoutesName.MyApp: (context) => MyApp(),
    RoutesName.Pilot: (context) => const Pilot(),
    RoutesName.host: (context) => host(),
    RoutesName.Afteruploaded: (context) =>  Afteruploaded(),
    RoutesName.Verificationstep: (context) => const Verificationstep(),
    RoutesName.Landingpage: (context) => const Landingpage(),
    RoutesName.DashboardBottom: (context) => const DashboardBottom(),
    RoutesName.Settingpage: (context) => const Settingpage(),
    RoutesName.Reportappissuse: (context) => const Reportappissuse(),
    RoutesName.Orderlive: (context) => const Orderlive(),
    RoutesName.OTPpages: (context) => const OTPpages(),
    RoutesName.Orderrideacitve: (context) => Orderrideacitve(),
    RoutesName.Finalotp: (context) => Finalotp(),
    RoutesName.Orderridereview: (context) => Orderridereview(),
    RoutesName.Orderhistory: (context) => Orderhistory(),
    RoutesName.Orderhistorydetailed: (context) => Orderhistorydetailed(),
    RoutesName.Vehiclevarification: (context) => Vehiclevarification(),
    RoutesName.PioltBottom: (context) => PioltBottom(),
    RoutesName.Incentivesdescriptions: (context) => Incentivesdescriptions(),
    RoutesName.Settingpiolt: (context) => Settingpiolt(),
    RoutesName.Ridemapping: (context) => Ridemapping(),
    RoutesName.Customerpickup: (context) => Customerpickup(),
    RoutesName.RideCondfirmation: (context) => RideCondfirmation(),
    RoutesName.Ride: (context) => Ride(),
    RoutesName.Ridesummary: (context) => Ridesummary(),
    RoutesName.Performance: (context) => Performance(),
  };
  }