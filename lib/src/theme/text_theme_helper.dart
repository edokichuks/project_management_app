import 'package:flutter/material.dart';
import '../core/app_export.dart';

class TextThemeHelper {
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumSFProTextGray30001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray30001,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 12,
      );
  static get labelMediumYellow800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.yellow800,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 12,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 12,
      );
  static get bodySmallGray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
        fontSize: 12,
      );
  static get bodySmallOnError_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontSize: 14,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 9,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallOnError12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 12,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14,
      );
  static get markProErrorContainer => TextStyle(
        color: theme.colorScheme.errorContainer,
        fontSize: 5,
        fontWeight: FontWeight.w400,
      ).markPro;
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumSFProTextGray700 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray700,
        fontSize: 15,
      );
  static get bodyMediumSFProText700 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blue300,
        fontSize: 15,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeLightgreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreenA700,
        fontSize: 13,
      );
  static get markProSecondaryContainer => TextStyle(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 5,
        fontWeight: FontWeight.w400,
      ).markPro;
  static get markProSecondaryContainerRegular => TextStyle(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 7,
        fontWeight: FontWeight.w400,
      ).markPro;
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 8,
      );
  static get labelMediumSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get headlineSmallSFProDisplayOnPrimary =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallSFProDisplay =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 15,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get markProErrorContainerRegular => TextStyle(
        color: theme.colorScheme.errorContainer,
        fontSize: 7,
        fontWeight: FontWeight.w400,
      ).markPro;
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 8,
      );
  static get labelLargeGray900cc => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900Cc,
        fontSize: 13,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get markPro {
    return copyWith(
      fontFamily: 'Mark Pro',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
