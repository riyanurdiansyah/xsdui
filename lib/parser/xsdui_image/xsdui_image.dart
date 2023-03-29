import 'package:flutter/material.dart';
import 'package:xsdui/parser/xsdui_image/xsdui_image_extension.dart';
import 'package:xsdui/xsdui.dart';

class XSduiImage {
  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    if (json["imageType"] == "network") {
      return Image.network(
        json["link"],
        filterQuality: XSduiFilterQuality.fromString(json["filterQuality"]),
        fit: json["fit"] == null ? null : XSduiImageFit.fromString(json["fit"]),
        errorBuilder: (_, __, ___) {
          if (json["errorBuilder"] != null) {
            return XSdui.fromJson(context, json: json["errorBuilder"]);
          }
          return const SizedBox();
        },
      );
    }

    if (json["imageType"] == "file") {
      return Image.file(
        json["link"],
        filterQuality: XSduiFilterQuality.fromString(json["filterQuality"]),
        fit: json["fit"] == null ? null : XSduiImageFit.fromString(json["fit"]),
        errorBuilder: (_, __, ___) {
          if (json["errorBuilder"] != null) {
            return XSdui.fromJson(context, json: json["errorBuilder"]);
          }
          return const SizedBox();
        },
      );
    }

    if (json["imageType"] == "memory") {
      return Image.memory(
        json["link"],
        filterQuality: XSduiFilterQuality.fromString(json["filterQuality"]),
        fit: json["fit"] == null ? null : XSduiImageFit.fromString(json["fit"]),
        errorBuilder: (_, __, ___) {
          if (json["errorBuilder"] != null) {
            return XSdui.fromJson(context, json: json["errorBuilder"]);
          }
          return const SizedBox();
        },
      );
    }

    return Image.asset(
      json["link"],
      filterQuality: XSduiFilterQuality.fromString(json["filterQuality"]),
      fit: json["fit"] == null ? null : XSduiImageFit.fromString(json["fit"]),
      errorBuilder: (_, __, ___) {
        if (json["errorBuilder"] != null) {
          return XSdui.fromJson(context, json: json["errorBuilder"]);
        }
        return const SizedBox();
      },
    );
  }
}
