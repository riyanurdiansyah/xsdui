// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xsdui_scaffold_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_XSduiScaffoldModel _$$_XSduiScaffoldModelFromJson(
        Map<String, dynamic> json) =>
    _$_XSduiScaffoldModel(
      type: json['type'] as String,
      paddingLeft: (json['paddingLeft'] as num).toDouble(),
      paddingRight: (json['paddingRight'] as num).toDouble(),
      paddingTop: (json['paddingTop'] as num).toDouble(),
      paddingBottom: (json['paddingBottom'] as num).toDouble(),
      appBar: json['appBar'],
      widget: json['widget'],
      bottomNavigationBar: json['bottomNavigationBar'],
    );

Map<String, dynamic> _$$_XSduiScaffoldModelToJson(
        _$_XSduiScaffoldModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'paddingLeft': instance.paddingLeft,
      'paddingRight': instance.paddingRight,
      'paddingTop': instance.paddingTop,
      'paddingBottom': instance.paddingBottom,
      'appBar': instance.appBar,
      'widget': instance.widget,
      'bottomNavigationBar': instance.bottomNavigationBar,
    };
