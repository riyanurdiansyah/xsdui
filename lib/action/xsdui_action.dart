// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:xsdui/navigator/xsdui_navigator.dart';
// import 'package:xsdui/network/xsdui_request.dart';

// part 'xsdui_action.freezed.dart';
// part 'xsdui_action.g.dart';

// enum ActionType { navigate, request, none }

// @freezed
// class XsduiAction with _$XsduiAction {
//   factory XsduiAction({
//     @Default(ActionType.none) ActionType actionType,
//     XsduiRequest? request,
//     Map<String, dynamic>? widgetJson,
//     String? assetPath,
//     NavigationType? navigationType,
//     NavigationStyle? navigationStyle,
//   }) = _XsduiAction;

//   factory XsduiAction.fromJson(Map<String, dynamic> json) =>
//       _$XsduiActionFromJson(json);
// }
