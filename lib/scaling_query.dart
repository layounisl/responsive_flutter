import 'dart:math';
import 'package:flutter/material.dart';

class ScalingQuery {
  final _guidelineBaseWidth = 350;
  final _guidelineBaseHeight = 680;

  var _shortDimension;
  var _longDimension;

  ScalingQuery(context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    this._shortDimension = width < height ? width : height;
    this._longDimension = width < height ? height : width;
  }

  double fontSize(double size) {
    var tempLongDimension = (16 / 9) * this._shortDimension;
    return sqrt(pow(tempLongDimension, 2) + pow(_shortDimension, 2)) *
        (size / 100);
  }

  double scale(double size) {
    return this._shortDimension / this._guidelineBaseWidth * size;
  }

  double verticalScale(double size) {
    return this._longDimension / this._guidelineBaseHeight * size;
  }

  double moderateScale(double size, [double factor = 0.5]) {
    return size + (scale(size) - size) * factor;
  }

  double hp(size) {
    return (this._longDimension * size) / 100;
  }

  double wp(size) {
    return (this._shortDimension * size) / 100;
  }
}
