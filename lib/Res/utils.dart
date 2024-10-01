// ignore_for_file: depend_on_referenced_packages


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';

class Utils {
  static void showErrorToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        fontSize: 20,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: ColorConstant.RED_COLOR,
        textColor: Colors.white);
  }

  static void showSuccessToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: ColorConstant.green ,
        textColor: Colors.white70);
  }

  static void flushBarErrorMessage(
      String message, BuildContext context, Color messageColor) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        messageColor: messageColor,
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        padding: const EdgeInsets.all(15),
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: ColorConstant.RED_COLOR,
        borderRadius: BorderRadius.circular(20),
        positionOffset: 20,
        icon: const Icon(
          Icons.error_outline,
          size: 30,
          color: Colors.white,
        ),
      )..show(context),
    );
  }

  static void flushBarSuccessMessage(
      String message, BuildContext context, Color messageColor) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        messageColor: messageColor,
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        padding: const EdgeInsets.all(15),
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor:ColorConstant.green ,
        borderRadius: BorderRadius.circular(20),
        positionOffset: 20,
        icon: const Icon(
          Icons.check_circle_outline_outlined,
          size: 30,
          color: Colors.white,
        ),
      )..show(context),
    );
  }
}
