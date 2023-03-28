import 'package:flutter/material.dart';

import '../utils/log.dart';

class XSdui {
  XSdui._();

  static Widget fromJson(
    BuildContext context, {
    required Map<String, dynamic> json,
  }) {
    try {} catch (e) {
      Log.e(e);
    }

    return const SizedBox();
  }
}
