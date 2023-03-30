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
}

extension XSduiDragStartBehavior on DragStartBehavior {
  static DragStartBehavior fromString(String? drag) {
    switch (drag) {
      case "down":
        return DragStartBehavior.down;
      case "start":
        return DragStartBehavior.start;
      default:
        return DragStartBehavior.start;
    }
  }
}
