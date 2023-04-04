import 'package:flutter/material.dart';
import 'package:xsdui/builder/bloc/home_bloc.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

import 'widgets/xsdui_side_bar_item.dart';

class XSduiSideBar extends StatelessWidget {
  const XSduiSideBar({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(right: 10),
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                onTap: () {},
                onEditingComplete: () {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0.2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0.2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0.2, color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  hintText: 'Cari widget disini...',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                    ),
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                listSectionWidget.length,
                (index) => ExpansionTile(
                  title: Text(
                    listSectionWidget[index].title,
                  ),
                  children: [
                    Wrap(
                      children: List.generate(
                        listWidget
                            .where((e) =>
                                e.section == listSectionWidget[index].section)
                            .toList()
                            .length,
                        (i) => Draggable<String>(
                          data: listWidget
                              .where((e) =>
                                  e.section == listSectionWidget[index].section)
                              .toList()[i]
                              .type,
                          feedback: Material(
                            child: XSduiSideBarItem(
                              widget: listWidget
                                  .where((e) =>
                                      e.section ==
                                      listSectionWidget[index].section)
                                  .toList()[i],
                            ),
                          ),
                          childWhenDragging: XSduiSideBarItem(
                            widget: listWidget
                                .where((e) =>
                                    e.section ==
                                    listSectionWidget[index].section)
                                .toList()[i],
                            onDrag: true,
                          ),
                          child: XSduiSideBarItem(
                            widget: listWidget
                                .where((e) =>
                                    e.section ==
                                    listSectionWidget[index].section)
                                .toList()[i],
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
