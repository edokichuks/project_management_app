import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../app_export.dart';


Future<String> openDatePicker({
  required BuildContext context,
}) async {
  final today = DateTime.now();
  String formattedDate = '';
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: DateTime.utc(1900),
      lastDate: today.add(
        const Duration(days: 30 * 3),
      ),
      builder: (BuildContext context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: theme.colorScheme.onError,
            ),
          ),
          child: child!,
        );
      });

  if (pickedDate != null) {
    formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    return formattedDate;
  }

  return formattedDate;
}
