// import 'package:flutter/cupertino.dart';
// import 'package:xsdui/action/xsdui_action.dart';
// import 'package:xsdui/navigator/xsdui_navigator.dart';
// import 'package:xsdui/network/xsdui_network.dart';
// import 'package:xsdui/xsdui/xsdui_main.dart';

// extension XsduiActionParser on XsduiAction? {
//   Future<dynamic>? onCall(BuildContext context) async {
//     if (this != null) {
//       if (this?.navigationStyle == NavigationStyle.pop) {
//         XSduiNavigator.navigateBack(context);
//       }
//       switch (this?.actionType ?? ActionType.none) {
//         case ActionType.navigate:
//           Widget? widget;
//           if (this!.widgetJson != null) {
//             widget = XSdui.fromJson(json: this!.widgetJson!, context);

//             return XSduiNavigator.navigate(
//               context: context,
//               navigationType: this?.navigationType ?? NavigationType.screen,
//               navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//               widget: widget,
//             );
//           } else if (this?.request != null) {
//             widget = XSdui.fromNetwork(this!.request!);

//             return XSduiNavigator.navigate(
//               context: context,
//               navigationType: this?.navigationType ?? NavigationType.screen,
//               navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//               widget: widget,
//             );
//           }
//           // else if (this?.assetPath != null) {
//           //   widget = await XSdui.fromAssets(this!.assetPath!, context);

//           //   if (context.mounted && widget != null) {
//           //     return XSduiNavigator.navigate(
//           //       context: context,
//           //       navigationType: this?.navigationType ?? NavigationType.screen,
//           //       navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//           //       widget: widget,
//           //     );
//           //   }
//           // }

//           break;

//         case ActionType.request:
//           return XsduiNetwork.request(this!.request!);
//         case ActionType.none:
//           break;
//       }
//     }
//     return null;
//   }
// }
