import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:do_it/src/core/app_export.dart';

toastMessage(String text, {bool long = false, Color? color}) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: long ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      backgroundColor: color ?? theme.colorScheme.onError,
      timeInSecForIosWeb: 2,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white);
}
