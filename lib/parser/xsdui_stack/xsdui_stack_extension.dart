import 'package:flutter/material.dart';

extension XSduiAlignment on AlignmentGeometry {
  static AlignmentGeometry fromString(String? alignment) {
    switch (alignment) {
      case null:
        return AlignmentDirectional.topStart;
      case "center":
        return Alignment.center;
      case "bottomLeft":
        return Alignment.bottomLeft;
      case "bottomRight":
        return Alignment.bottomRight;
      case "bottomCenter":
        return Alignment.bottomCenter;
      case "centerLeft":
        return Alignment.centerLeft;
      case "centerRight":
        return Alignment.centerRight;
      case "topCenter":
        return Alignment.topCenter;
      case "topLeft":
        return Alignment.topLeft;
      case "topRight":
        return Alignment.topRight;
      case "directionalTopStart":
        return AlignmentDirectional.topStart;
      case "directionalTopEnd":
        return AlignmentDirectional.topEnd;
      case "directionalTopCenter":
        return AlignmentDirectional.topCenter;
      case "directionalBottomStart":
        return AlignmentDirectional.bottomStart;
      case "directionalBottomEnd":
        return AlignmentDirectional.bottomEnd;
      case "directionalBottomCenter":
        return AlignmentDirectional.bottomCenter;
      case "directionalCenterStart":
        return AlignmentDirectional.centerStart;
      case "directionalCenterEnd":
        return AlignmentDirectional.centerEnd;
      case "directionalCenter":
        return AlignmentDirectional.center;
      default:
        return AlignmentDirectional.topStart;
    }
  }

  static String? convertToString(AlignmentGeometry? align) {
    if (align == Alignment.center) {
      return "center";
    }
    if (align == Alignment.topCenter) {
      return "topCenter";
    }

    if (align == Alignment.topLeft) {
      return "topLeft";
    }

    if (align == Alignment.topRight) {
      return "topRight";
    }

    if (align == Alignment.bottomCenter) {
      return "bottomCenter";
    }

    if (align == Alignment.bottomLeft) {
      return "bottomLeft";
    }

    if (align == Alignment.bottomRight) {
      return "bottomRight";
    }

    if (align == Alignment.center) {
      return "center";
    }

    if (align == Alignment.centerLeft) {
      return "centerLeft";
    }

    if (align == Alignment.centerRight) {
      return "centerRight";
    }
    return null;
  }
}

extension XSduiStackFit on StackFit {
  static StackFit fromString(String? stackFit) {
    switch (stackFit) {
      case null:
        return StackFit.loose;
      case "loose":
        return StackFit.loose;
      case "expand":
        return StackFit.expand;
      case "passThrough":
        return StackFit.passthrough;
      default:
        return StackFit.loose;
    }
  }
}

extension XSduiClipBehavior on Clip {
  static Clip fromString(String? clip) {
    switch (clip) {
      case null:
        return Clip.none;
      case "antiAlias":
        return Clip.antiAlias;
      case "antiAliasWithSaveLayer":
        return Clip.antiAliasWithSaveLayer;
      case "none":
        return Clip.none;
      default:
        return Clip.hardEdge;
    }
  }

  static String? convertToString(Clip clip) {
    switch (clip) {
      case Clip.antiAlias:
        return "antiAlias";
      case Clip.antiAliasWithSaveLayer:
        return "antiAliasWithSaveLayer";
      case Clip.none:
        return "none";
      default:
        return null;
    }
  }
}
