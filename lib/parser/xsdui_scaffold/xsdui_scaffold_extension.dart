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

  static String? tooString(FloatingActionButtonLocation? location) {
    switch (location) {
      case FloatingActionButtonLocation.centerDocked:
        return "centerDocked";
      case FloatingActionButtonLocation.centerFloat:
        return "centerFloat";
      case FloatingActionButtonLocation.centerTop:
        return "centerTop";
      case FloatingActionButtonLocation.endDocked:
        return "endDocked";
      case FloatingActionButtonLocation.endFloat:
        return "endFloat";
      case FloatingActionButtonLocation.endTop:
        return "endTop";
      case FloatingActionButtonLocation.miniCenterDocked:
        return "miniCenterDocked";
      case FloatingActionButtonLocation.miniCenterFloat:
        return "miniCenterFloat";
      case FloatingActionButtonLocation.miniCenterTop:
        return "miniCenterTop";
      case FloatingActionButtonLocation.miniEndDocked:
        return "miniEndDocked";
      case FloatingActionButtonLocation.miniEndFloat:
        return "miniEndFloat";
      case FloatingActionButtonLocation.miniEndTop:
        return "miniEndTop";
      case FloatingActionButtonLocation.miniStartDocked:
        return "miniStartDocked";
      case FloatingActionButtonLocation.miniStartFloat:
        return "miniStartFloat";
      case FloatingActionButtonLocation.miniStartTop:
        return "miniStartTop";
      case FloatingActionButtonLocation.startDocked:
        return "startDocked";
      case FloatingActionButtonLocation.startFloat:
        return "startFloat";
      case FloatingActionButtonLocation.startTop:
        return "startTop";
      default:
        return null;
    }
  }
}
