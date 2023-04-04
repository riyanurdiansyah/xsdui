import 'package:flutter/material.dart';
import 'package:xsdui/utils/xsdui_widget_model.dart';

class XSduiSideBarItem extends StatelessWidget {
  const XSduiSideBarItem({
    Key? key,
    required this.widget,
    this.onDrag = false,
  }) : super(key: key);

  final XSduiWidgetModel widget;
  final bool onDrag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: onDrag == true ? BorderRadius.circular(6) : null,
      ),
      height: 100,
      width: 85,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.all(4),
              color: Colors.grey.shade400,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
