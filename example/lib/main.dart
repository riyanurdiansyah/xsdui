import 'package:flutter/material.dart';
import 'package:xsdui/xsdui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic> jsonWidget = {
    "type": "wrap",
    "spacing": 10.0,
    "runSpacing": 10.0,
    "children": [
      {
        "type": "GestureDetector",
        "index": 0,
        "onPressed": {
          "type": "customFunctionWithParameters",
          "functionName": "ontap",
          "parameter": 0,
        },
        "child": {
          "type": "container",
          "padding": {
            "paddingType": "symmetric",
            "vertical": 7.0,
            "horizontal": 18.0,
          },
          "borderRadius": {
            "borderRadiusType": "circular",
            "radius": 8.0,
          },
          "border": {
            "color": "DCDDE1",
          },
          "child": {
            "type": "image",
            "imageType": "network",
            "width": 125.0,
            "height": 35.0,
            "link":
                "https://d19izmiuoyzsz.cloudfront.net/certificate/TsJgla0AWmYsKpxBVIDohLwIsZzks1ECUYuI9rGt.png",
          }
        },
      },
      {
        "type": "GestureDetector",
        "index": 1,
        "onPressed": {
          "type": "customFunctionWithParameters",
          "functionName": "ontap",
          "parameter": 1,
        },
        "child": {
          "type": "container",
          "padding": {
            "paddingType": "symmetric",
            "vertical": 7.0,
            "horizontal": 18.0,
          },
          "borderRadius": {
            "borderRadiusType": "circular",
            "radius": 8.0,
          },
          "border": {
            "color": "DCDDE1",
          },
          "child": {
            "type": "image",
            "imageType": "network",
            "width": 125.0,
            "height": 35.0,
            "link":
                "https://d19izmiuoyzsz.cloudfront.net/certificate/q9jM8dLivyuNdAUbcBwQITGPnUV4ZYYv5788k4GS.png",
          }
        },
      }
    ]
  };
  final List<String> syaratMendaftar = [
    'WNI berusia 18 tahun keatas.',
    'Tidak sedang menempuh pendidikan formal.',
    'Sedang mencari kerja, pekerja/buruh yang terkena PHK, atau pekerja/buruh yang membutuhkan peningkatan kompetensi kerja, seperti pekerja/buruh yang dirumahkan dan pekerja bukan penerima upah, termasuk pelaku usaha mikro & kecil.',
    'Bukan penerima bantuan sosial lainnya selama pandemi COVID-19.',
    'Bukan Pejabat Negara, Pimpinan dan Anggota DPRD, ASN, Prajurit TNI, Anggota Polri, Kepala Desa dan perangkat desa dan Direksi/Komisaris/Dewan Pengawas pada BUMN atau BUMD.',
    'Maksimal 2 NIK dalam 1 KK yang menjadi Penerima Kartu Prakerja.',
  ];

  int index = 0;
  List<int> listIndex = [];
  Map<String, Function> functionMap = {};
  Map<String, Function(dynamic)> functionMapWithParameter = {};
  Map<String, int> indexJson = {};

  void addFunction(Map<String, Function> newFunction) {
    functionMap.addEntries(newFunction.entries);
    XSdui.setFunctionMap(functionMap);
  }

  void addFunctionParameter(Map<String, Function(dynamic)> newFunction) {
    functionMapWithParameter.addEntries(newFunction.entries);
    XSdui.setFunctionMapWithParameter(functionMapWithParameter);
  }

  void changeIndex() {
    setState(() {
      index++;
      jsonWidget["children"][0]["child"]["border"]["color"] = "#6e4e8e";
    });
  }

  void addedValueFromJson(int value) {
    setState(() {
      listIndex.add(value);
    });
  }

  @override
  void initState() {
    addFunctionParameter({
      'ontap': (data) {
        final List<Map<String, dynamic>> list = jsonWidget["children"] ?? [];
        setState(() {
          index = data as int;
          list[list.indexWhere((e) => e["onPressed"]["parameter"] == index)]
              ["child"]["border"]["color"] = "#6e4e8e";
          list[list.indexWhere((e) => e["onPressed"]["parameter"] != index)]
              ["child"]["border"]["color"] = "#DCDDE1";
        });
      }
    });
    final leng = jsonWidget["children"]?.length ?? 0;
    for (int i = 0; i < leng; i++) {
      listIndex.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: XSdui.fromJson(
          context,
          json: jsonWidget,
        ),
      ),
    );
  }
}
