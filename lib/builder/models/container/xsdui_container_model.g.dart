// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xsdui_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_XSduiContainerModel _$$_XSduiContainerModelFromJson(
        Map<String, dynamic> json) =>
    _$_XSduiContainerModel(
      type: json['type'] as String,
      paddingLeft: (json['paddingLeft'] as num).toDouble(),
      paddingRight: (json['paddingRight'] as num).toDouble(),
      paddingBottom: (json['paddingBottom'] as num).toDouble(),
      paddingTop: (json['paddingTop'] as num).toDouble(),
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_XSduiContainerModelToJson(
        _$_XSduiContainerModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'paddingLeft': instance.paddingLeft,
      'paddingRight': instance.paddingRight,
      'paddingBottom': instance.paddingBottom,
      'paddingTop': instance.paddingTop,
      'color': instance.color,
    };
