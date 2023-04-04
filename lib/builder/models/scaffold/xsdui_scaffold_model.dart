import 'package:freezed_annotation/freezed_annotation.dart';

part 'xsdui_scaffold_model.freezed.dart';
part 'xsdui_scaffold_model.g.dart';

@freezed
class XSduiScaffoldModel with _$XSduiScaffoldModel {
  const factory XSduiScaffoldModel({
    required String type,
    required double paddingLeft,
    required double paddingRight,
    required double paddingTop,
    required double paddingBottom,
    required dynamic appBar,
    required dynamic widget,
    required dynamic bottomNavigationBar,
  }) = _XSduiScaffoldModel;

  factory XSduiScaffoldModel.fromJson(Map<String, dynamic> json) =>
      _$XSduiScaffoldModelFromJson(json);
}
