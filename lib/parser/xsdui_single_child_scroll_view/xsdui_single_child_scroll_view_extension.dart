import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension XSduiAxis on Axis {
  static Axis fromString(String? direction) {
    switch (direction) {
      case null:
        return Axis.vertical;
      case "vertical":
        return Axis.vertical;
      case "horizontal":
        return Axis.horizontal;
      default:
        return Axis.vertical;
    }
  }

  static String? convertToString(Axis? axis) {
    switch (axis) {
      case Axis.vertical:
        return "vertical";
      case Axis.horizontal:
        return "horizontal";
      default:
        return null;
    }
  }
}

extension XSduiScrollPhysics on ScrollPhysics {
  static ScrollPhysics fromString(String physic) {
    switch (physic) {
      case "clamping":
        return const ClampingScrollPhysics();
      case "bouncing":
        return const BouncingScrollPhysics();
      case "fixed":
        return const FixedExtentScrollPhysics();
      case "never":
        return const NeverScrollableScrollPhysics();
      case "page":
        return const PageScrollPhysics();
      default:
        return const ScrollPhysics();
    }
  }

  static String? convertToString(ScrollPhysics? scroll) {
    switch (scroll) {
      case ClampingScrollPhysics():
        return "clamping";
      case BouncingScrollPhysics():
        return "bouncing";
      case FixedExtentScrollPhysics():
        return "fixed";
      case NeverScrollableScrollPhysics():
        return "never";
      case PageScrollPhysics():
        return "page";
      default:
        return null;
    }
  }
}

extension XSduiDragStartBehavior on DragStartBehavior {
  static DragStartBehavior fromString(String? drag) {
    switch (drag) {
      case null:
        return DragStartBehavior.start;
      case "down":
        return DragStartBehavior.down;
      case "start":
        return DragStartBehavior.start;
      default:
        return DragStartBehavior.start;
    }
  }

  static String? convertToString(DragStartBehavior? drag) {
    switch (drag) {
      case DragStartBehavior.down:
        return "down";
      case DragStartBehavior.start:
        return "start";
      default:
        return null;
    }
  }
}
