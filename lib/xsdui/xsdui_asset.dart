import 'dart:convert';

import 'package:flutter/services.dart';

class XSduiAsset {
  static Future<Map<String, dynamic>> load({
    required String path,
  }) async {
    return json.decode(await rootBundle.loadString(path));
  }
}
