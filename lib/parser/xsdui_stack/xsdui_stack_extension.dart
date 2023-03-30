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
        return Clip.hardEdge;
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
}
