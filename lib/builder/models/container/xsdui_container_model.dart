import 'package:freezed_annotation/freezed_annotation.dart';

part 'xsdui_container_model.freezed.dart';
part 'xsdui_container_model.g.dart';

@freezed
class XSduiContainerModel with _$XSduiContainerModel {
  const factory XSduiContainerModel({
    required String type,
    required double paddingLeft,
    required double paddingRight,
    required double paddingBottom,
    required double paddingTop,
    required String color,
  }) = _XSduiContainerModel;

  factory XSduiContainerModel.fromJson(Map<String, dynamic> json) =>
      _$XSduiContainerModelFromJson(json);
}
