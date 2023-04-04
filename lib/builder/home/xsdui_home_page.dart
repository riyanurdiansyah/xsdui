import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xsdui/builder/home/xsdui_display_page.dart';
import 'package:xsdui/builder/models/container/xsdui_container_model.dart';
import 'package:xsdui/builder/sidebar/xsdui_side_bar.dart';
import 'package:xsdui/utils/xsdui_constanta.dart';

import '../bloc/home_bloc.dart';

class XSduiHomePage extends StatefulWidget {
  const XSduiHomePage({super.key});

  @override
  State<XSduiHomePage> createState() => _XSduiHomePageState();
}

class _XSduiHomePageState extends State<XSduiHomePage> {
  final _homeBloc = HomeBloc();

  @override
  void initState() {
    _homeBloc.add(const HomeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => _homeBloc,
      child: Scaffold(
        drawer: XSduiSideBar(
          homeBloc: _homeBloc,
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              color: Colors.grey.shade200,
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    width: 60,
                    color: Colors.white,
                    child: Column(
                      children: List.generate(
                        listCategory.length,
                        (index) => BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return InkWell(
                              onTap: () =>
                                  _homeBloc.add(HomeChangeIndexEvent(index)),
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: const Duration(seconds: 1),
                                margin: const EdgeInsets.all(4),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: state.indexSelected == index
                                      ? Colors.black
                                      : Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(
                                  listCategory[index].icon,
                                  color: state.indexSelected == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.grey.shade100,
                          child: BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              if (state.indexSelected == 0) {
                                return XSduiSideBar(
                                  homeBloc: _homeBloc,
                                );
                              }
                              return SizedBox(
                                child: Column(
                                  children: [
                                    Text(state.widget.type),
                                    if (state.widget.widget != null)
                                      if (state.widget.widget
                                          is XSduiContainerModel)
                                        Text((state.widget.widget
                                                as XSduiContainerModel)
                                            .type)
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const Expanded(
                    flex: 6,
                    child: XSduiDisplayPage(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blue.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
