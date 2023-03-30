import 'package:flutter/material.dart';

extension XSduiScaffoldFloatingActionButtonLocation
    on FloatingActionButtonLocation {
  static FloatingActionButtonLocation fromString(String location) {
    switch (location) {
      case "centerDocked":
        return FloatingActionButtonLocation.centerDocked;
      case "centerFloat":
        return FloatingActionButtonLocation.centerFloat;
      case "centerTop":
        return FloatingActionButtonLocation.centerTop;
      case "endDocked":
        return FloatingActionButtonLocation.endDocked;
      case "endFloat":
        return FloatingActionButtonLocation.endFloat;
      case "endTop":
        return FloatingActionButtonLocation.endTop;
      case "miniCenterDocked":
        return FloatingActionButtonLocation.miniCenterDocked;
      case "miniCenterFloat":
        return FloatingActionButtonLocation.miniCenterFloat;
      case "miniCenterTop":
        return FloatingActionButtonLocation.miniCenterTop;
      case "miniEndDocked":
        return FloatingActionButtonLocation.miniEndDocked;
      case "miniEndFloat":
        return FloatingActionButtonLocation.miniEndFloat;
      case "miniEndTop":
        return FloatingActionButtonLocation.miniEndTop;
      case "miniStartDocked":
        return FloatingActionButtonLocation.miniStartDocked;
      case "miniStartFloat":
        return FloatingActionButtonLocation.miniStartFloat;
      case "miniStartTop":
        return FloatingActionButtonLocation.miniStartTop;
      case "startDocked":
        return FloatingActionButtonLocation.startDocked;
      case "startFloat":
        return FloatingActionButtonLocation.startFloat;
      case "startTop":
        return FloatingActionButtonLocation.startTop;
      default:
        return FloatingActionButtonLocation.endFloat;
    }
  }
}
