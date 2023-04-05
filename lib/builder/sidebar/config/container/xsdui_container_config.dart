import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

class XSduiContainerConfig extends StatelessWidget {
  const XSduiContainerConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Container #44242",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.delete_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black45,
          ),
          const ExpansionTile(
            collapsedBackgroundColor: Colors.white,
            title: Text("Size"),
          ),
          ExpansionTile(
            collapsedBackgroundColor: Colors.white,
            title: const Text("Alignment"),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField<String>(
                items: listAlignment.map((val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Row(
                      children: <Widget>[Text(val)],
                    ),
                  );
                }).toList(),
                onChanged: (val) {},
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  hintText: ".....",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          ExpansionTile(
            collapsedBackgroundColor: Colors.white,
            title: const Text("Margin"),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "L",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "T",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "R",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "B",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock_rounded,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          ExpansionTile(
            collapsedBackgroundColor: Colors.white,
            title: const Text("Padding"),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "L",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "T",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "R",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "B",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock_rounded,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          ExpansionTile(
            collapsedBackgroundColor: Colors.white,
            title: const Text("Decoration"),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text("Radius"),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "TL",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "BL",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "TR",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SizedBox(
                    height: 35,
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "BR",
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock_rounded,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ColorPicker(
                colorCodeReadOnly: true,
                colorCodeHasColor: true,
                title: const Text("Color"),
                showColorCode: true,
                padding: EdgeInsets.zero,
                onColorChanged: (val) {
                  debugPrint(val.hex);
                },
                pickersEnabled: const <ColorPickerType, bool>{
                  ColorPickerType.both: false,
                  ColorPickerType.primary: true,
                  ColorPickerType.accent: true,
                  ColorPickerType.bw: false,
                  ColorPickerType.custom: false,
                  ColorPickerType.wheel: true,
                },
                copyPasteBehavior: const ColorPickerCopyPasteBehavior(
                  pasteButton: true,
                  copyButton: true,
                  ctrlV: true,
                  ctrlC: true,
                  editFieldCopyButton: true,
                  editUsesParsedPaste: true,
                  feedbackParseError: true,
                  autoFocus: true,
                  longPressMenu: true,
                  parseShortHexCode: true,
                  secondaryMenu: true,
                  secondaryOnDesktopLongOnDeviceAndWeb: true,
                  secondaryOnDesktopLongOnDevice: true,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
