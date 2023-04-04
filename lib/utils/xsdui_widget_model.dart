import 'package:flutter/material.dart';

class XSduiWidgetSectionModel {
  XSduiWidgetSectionModel({
    required this.title,
    required this.section,
  });

  final String title;
  final int section;
}

class XSduiWidgetModel {
  XSduiWidgetModel({
    required this.title,
    required this.type,
    required this.section,
  });

  final String title;
  final String type;
  final int section;
}

class XSduiCategoryModel {
  XSduiCategoryModel({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
}
