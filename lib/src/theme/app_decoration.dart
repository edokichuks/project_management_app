import 'package:flutter/material.dart';

import 'package:project_management_app/src/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get txtFill2 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              5,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1,
        ),
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1,
        ),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.gray5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder25 = BorderRadius.circular(
    25,
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    4,
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    10,
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    30,
  );

  static BorderRadius txtRoundedBorder2 = BorderRadius.circular(
    2,
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
