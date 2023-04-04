import 'package:flutter/material.dart';

class XSduiDisplayPage extends StatelessWidget {
  const XSduiDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1080 / 2220,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: Scaffold(
              appBar: AppBar(),
              body: DragTarget<String>(
                onWillAccept: (val) => val != "scaffold",
                onAccept: (val) {
                  debugPrint("CAN 3 $val");
                },
                onLeave: (val) {},
                builder: (context, candidates, rejectedData) {
                  debugPrint("CAN $candidates");
                  debugPrint("CAN 2 $rejectedData");
                  return Stack(
                    children: [
                      Container(
                        color: Colors.amber,
                      ),
                      if (candidates.isNotEmpty)
                        Container(
                          width: 200,
                          height: 80,
                          color: Colors.green,
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
