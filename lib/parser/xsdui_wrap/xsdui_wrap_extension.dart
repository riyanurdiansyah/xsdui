import 'package:flutter/material.dart';

extension XSduiWrapAlignmentExtension on WrapAlignment {
  static WrapAlignment fromString(String wrap) {
    switch (wrap) {
      case 'center':
        return WrapAlignment.center;
      case 'end':
        return WrapAlignment.end;
      case 'spaceBetween':
        return WrapAlignment.spaceBetween;
      case 'spaceEvenly':
        return WrapAlignment.spaceEvenly;
      case 'spaceAround':
        return WrapAlignment.spaceAround;
      default:
        return WrapAlignment.start;
    }
  }
}

extension XSduiCrossWrapAlignmentExtension on WrapCrossAlignment {
  static WrapCrossAlignment fromString(String crossWrap) {
    switch (crossWrap) {
      case 'center':
        return WrapCrossAlignment.center;
      case 'end':
        return WrapCrossAlignment.end;
      default:
        return WrapCrossAlignment.start;
    }
  }
}
