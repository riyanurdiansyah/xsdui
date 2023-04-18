import 'package:flutter/material.dart';

extension XSduiFontWeight on FontWeight {
  static FontWeight fromString(String weight) {
    switch (weight) {
      case "bold":
        return FontWeight.bold;
      case "w100":
        return FontWeight.w100;

      case "w200":
        return FontWeight.w200;

      case "w300":
        return FontWeight.w300;

      case "w400":
        return FontWeight.w400;

      case "w500":
        return FontWeight.w500;

      case "w600":
        return FontWeight.w600;

      case "w700":
        return FontWeight.w700;

      case "w800":
        return FontWeight.w800;

      case "w900":
        return FontWeight.w900;

      default:
        return FontWeight.normal;
    }
  }
}

extension XSduiFontStyle on FontStyle {
  static FontStyle fromString(String style) {
    switch (style) {
      case "italic":
        return FontStyle.italic;

      default:
        return FontStyle.normal;
    }
  }
}

extension XSduiTextOverflow on TextOverflow {
  static TextOverflow fromString(String overflow) {
    switch (overflow) {
      case "clip":
        return TextOverflow.clip;

      case "visible":
        return TextOverflow.visible;

      case "fade":
        return TextOverflow.fade;

      default:
        return TextOverflow.ellipsis;
    }
  }

  static String? convertToString(TextOverflow? overflow) {
    switch (overflow) {
      case TextOverflow.clip:
        return "clip";

      case TextOverflow.visible:
        return "visible";

      case TextOverflow.fade:
        return "fade";

      default:
        return null;
    }
  }
}

extension XSduiTextAlign on TextAlign {
  static TextAlign fromString(String? overflow) {
    switch (overflow) {
      case null:
        return TextAlign.start;

      case "center":
        return TextAlign.center;

      case "start":
        return TextAlign.start;

      case "justify":
        return TextAlign.justify;

      case "left":
        return TextAlign.left;

      case "right":
        return TextAlign.right;

      default:
        return TextAlign.start;
    }
  }

  static String? convertToString(TextAlign? overflow) {
    switch (overflow) {
      case TextAlign.center:
        return "center";

      case TextAlign.start:
        return "start";

      case TextAlign.justify:
        return "justify";

      case TextAlign.left:
        return "left";

      case TextAlign.right:
        return "right";

      default:
        return null;
    }
  }
}
