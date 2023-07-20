import 'package:flutter/material.dart';


class AppBottomSheet {
  static Future<void> sheet({
    required BuildContext context,
    required Widget child,
  }) async {
    return showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => child,
    );
  }
}
