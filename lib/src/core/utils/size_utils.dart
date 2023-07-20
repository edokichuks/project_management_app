import 'package:flutter/material.dart';

double getSize(double px) {
  return px;
}

double getVerticalSize( double px) {
  return px;
}

double getHorizontalSize(double px) {
  return px;
}

EdgeInsets getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: left ?? 0,
    top: top ?? 0,
    right: right ?? 0,
    bottom: bottom ?? 0,
  );
}

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

EdgeInsets getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

EdgeInsets getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}
