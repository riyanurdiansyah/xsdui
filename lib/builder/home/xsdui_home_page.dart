// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:xsdui/builder/home/xsdui_display_page.dart';
// import 'package:xsdui/builder/sidebar/xsdui_side_bar_tree.dart';
// import 'package:xsdui/builder/sidebar/xsdui_side_bar.dart';
// import 'package:xsdui/builder/sidebar/xsdui_side_bar_config.dart';
// import 'package:xsdui/utils/xsdui_constanta.dart';

// import '../bloc/home_bloc.dart';

// class XSduiHomePage extends StatefulWidget {
//   const XSduiHomePage({super.key});

//   @override
//   State<XSduiHomePage> createState() => _XSduiHomePageState();
// }

// class _XSduiHomePageState extends State<XSduiHomePage> {
//   final _homeBloc = HomeBloc();

//   @override
//   void initState() {
//     _homeBloc.add(const HomeEvent());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<HomeBloc>(
//       create: (context) => _homeBloc,
//       child: Scaffold(
//         drawer: XSduiSideBar(homeBloc: _homeBloc),
//         body: Column(
//           children: [
//             Container(
//               height: 50,
//               color: Colors.grey.shade200,
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.symmetric(vertical: 4),
//                     width: 60,
//                     color: Colors.white,
//                     child: Column(
//                       children: List.generate(
//                         listCategory.length,
//                         (index) => BlocBuilder<HomeBloc, HomeState>(
//                           builder: (context, state) {
//                             return InkWell(
//                               onTap: () =>
//                                   _homeBloc.add(HomeChangeIndexEvent(index)),
//                               child: AnimatedContainer(
//                                 alignment: Alignment.center,
//                                 duration: const Duration(seconds: 1),
//                                 margin: const EdgeInsets.all(4),
//                                 width: 50,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   color: state.indexSelected == index
//                                       ? Colors.black
//                                       : Colors.grey.shade300,
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                                 child: Icon(
//                                   listCategory[index].icon,
//                                   color: state.indexSelected == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: BlocBuilder<HomeBloc, HomeState>(
//                       builder: (context, state) {
//                         return Container(
//                           alignment: Alignment.center,
//                           color: Colors.grey.shade100,
//                           child: BlocBuilder<HomeBloc, HomeState>(
//                             builder: (context, state) {
//                               if (state.indexSelected == 0) {
//                                 return XSduiSideBar(homeBloc: _homeBloc);
//                               }
//                               return XSduiSideBarTree(homeBloc: _homeBloc);
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   Expanded(
//                     flex: 6,
//                     child: XSduiDisplayPage(
//                       homeBloc: _homeBloc,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: XSduiSideBarConfig(
//                       homeBloc: _homeBloc,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

class XSduiHomePage extends StatefulWidget {
  const XSduiHomePage({super.key});

  @override
  State<XSduiHomePage> createState() => _XSduiHomePageState();
}

class _XSduiHomePageState extends State<XSduiHomePage> {
  final bool _expanded = false;
  bool isLoading = true;
  Map<String, Function> functionMap = {};

  void addFunction(Map<String, Function> newFunction) {
    isLoading = true;

    print(newFunction);
    functionMap.addEntries(newFunction.entries);

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    addFunction({'toggle': toggle});
    print('we $functionMap');
  }

  void toggle() {
    setState(() {
      !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> readOnlyFalse = {
      "type": "scaffold",
      "appBar": {
        "centerTitle": true,
        "automaticallyImplyLeading": false,
        "backgroundColor": "#EE4B2B",
        "elevation": 4.0,
        "titleSpacing": 15.0,
        "title": {"type": "text", "title": "App Bar Server"},
        "leading": {
          "type": "container",
          "width": 25.0,
          "height": 25.0,
          "color": "#FFFFFF",
          "shape": "rectangle",
          "borderRadius": {"borderRadiusType": "circular", "radius": 10.0}
        }
      },
      "body": {
        "type": "singleChildScrollView",
        "child": {
          "type": "column",
          "children": [
            {
              "type": "row",
              "children": [
                {
                  "type": "text",
                  "title": "Data Anda",
                  "fontSize": 11.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "elevatedbutton",
                  "onPressed": {
                    "type": "customFunction",
                    "functionName": "toggle"
                  }
                },
                {
                  "type": "text",
                  "title": "Nama Lengkap",
                  "fontSize": 11.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "text",
                  "title": " (akan tampil di sertifikat)",
                  "fontSize": 11.0,
                  "fontWeight": "w400",
                  "color": "#000000"
                },
              ]
            },
            {
              "type": "textFormField",
              "obscureText": true,
              "border": {
                "borderType": "outline",
              }
            },
            {
              "type": "row",
              "children": [
                {
                  "type": "text",
                  "title": "Nama Lengkap",
                  "fontSize": 11.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "text",
                  "title": " (akan tampil di sertifikat)",
                  "fontSize": 11.0,
                  "fontWeight": "w400",
                  "color": "#000000"
                },
              ]
            },
            {
              "type": "textFormField",
              "obscureText": true,
              "border": {
                "borderType": "outline",
              }
            },
            {"type": "divider", "thickness": 3.0, "color": "#dddddd"},
            {
              "type": "row",
              "children": [
                {
                  "type": "text",
                  "title": "Nama Lengkap",
                  "fontSize": 11.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "text",
                  "title": " (akan tampil di sertifikat)",
                  "fontSize": 11.0,
                  "fontWeight": "w400",
                  "color": "#000000"
                },
              ]
            },
            {
              "type": "textFormField",
              "obscureText": true,
              "border": {
                "borderType": "outline",
              }
            },
          ]
        }
      }
    };
    final Map<String, dynamic> readOnlyTrue = {
      "type": "scaffold",
      "appBar": {
        "centerTitle": true,
        "automaticallyImplyLeading": false,
        "backgroundColor": "#EE4B2B",
        "elevation": 4.0,
        "titleSpacing": 15.0,
        "title": {"type": "text", "title": "App Bar Server"},
        "leading": {
          "type": "container",
          "width": 25.0,
          "height": 25.0,
          "color": "#FFFFFF",
          "shape": "rectangle",
          "borderRadius": {"borderRadiusType": "circular", "radius": 10.0}
        }
      },
      "body": {
        "type": "singleChildScrollView",
        "child": {
          "type": "column",
          "children": [
            {
              "type": "row",
              "children": [
                {
                  "type": "text",
                  "title": "Nama Lengkap",
                  "fontSize": 11.0,
                  "fontWeight": "w600",
                  "color": "#000000"
                },
                {
                  "type": "elevatedbutton",
                  "onPressed": {
                    "type": "customFunction",
                    "functionName": "toggle"
                  }
                },
                {
                  "type": "text",
                  "title": " (akan tampil di sertifikat)",
                  "fontSize": 11.0,
                  "fontWeight": "w400",
                  "color": "#000000"
                },
              ]
            },
            {
              "type": "textFormField",
              "obscureText": true,
              "border": {
                "borderType": "outline",
              }
            },
          ]
        }
      }
    };

    return isLoading == true
        ? const Scaffold(body: Center(child: CircularProgressIndicator()))
        : _expanded == true && isLoading == false
            ? XSdui.fromJson(context,
                json: readOnlyFalse, functionMap: functionMap)
            : XSdui.fromJson(context,
                json: readOnlyTrue, functionMap: functionMap);
  }
}
