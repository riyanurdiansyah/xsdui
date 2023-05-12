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
        height: json['height'],
        width: json['width'],
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
        height: json['height'],
        width: json['width'],
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
        height: json['height'],
        width: json['width'],
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
      height: json['height'],
      width: json['width'],
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

  static Map<String, dynamic>? toJson(Image widget) {
    if (widget.image is NetworkImage) {
      return {
        "type": "image",
        "imageType": "network",
        "link": (widget.image as NetworkImage).url,
        "fit": widget.fit == null
            ? null
            : widget.fit!.toString().replaceAll("BoxFit.", ""),
      };
    }

    if (widget.image is AssetImage) {
      return {
        "type": "image",
        "imageType": "network",
        "link": (widget.image as FileImage).file.path,
        "fit": widget.fit == null
            ? null
            : widget.fit!.toString().replaceAll("BoxFit.", ""),
      };
    }
    return {
      "type": "image",
      "imageType": "network",
      "link": (widget.image as AssetImage).assetName,
      "fit": widget.fit == null
          ? null
          : widget.fit!.toString().replaceAll("BoxFit.", ""),
    };
  }
}
