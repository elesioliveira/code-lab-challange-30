import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controller/controller_menu.dart';
import '../../../../core/features/atoms/tokens/app_colors.dart';
import '../../../../core/features/atoms/tokens/app_typography.dart';
import '../../../../core/features/atoms/tokens/gaps.dart';
import '../../../../core/features/molecules/text_rich_app.dart';

class MenuAppDesktop extends StatefulWidget {
  const MenuAppDesktop({super.key});

  @override
  State<MenuAppDesktop> createState() => _MenuAppDesktopState();
}

class _MenuAppDesktopState extends State<MenuAppDesktop> {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.dashboard_outlined, 'text': 'DashBoard'},
    {'icon': CupertinoIcons.square_arrow_down, 'text': 'Carteira'},
    {'icon': Icons.shopping_cart_outlined, 'text': 'Transações'},
    {'icon': CupertinoIcons.person_2, 'text': 'Suporte'},
    {'icon': Icons.settings_suggest_outlined, 'text': 'Ajustes'},
    {'icon': Icons.settings_power, 'text': 'Desconectar'},
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isOpen,
      builder: (context, value, child) {
        return AnimatedContainer(
          alignment: AlignmentDirectional.center,
          duration: const Duration(milliseconds: 500),
          color: AppColors.dartk40,
          constraints: BoxConstraints(
              minHeight: double.maxFinite, maxWidth: value ? 250 : 100),
          curve: Curves.easeInOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              DSGaps.v24,
              Row(
                children: [
                  AnimatedBuilder(
                      animation: isOpen,
                      builder: (context, child) {
                        if (isOpen.value) {
                          return const SizedBox(
                            width: 40,
                          );
                        }
                        return const SizedBox(
                          width: 27,
                        );
                      }),
                  GestureDetector(
                    onTap: () {
                      toggleMenuOpen();
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: TextRichApp(
                        key: ValueKey(value),
                        textoInicial: 'e',
                        segundoTexto: value ? 'Front' : '',
                        primeiroFontColor: AppColors.brandColor,
                        primeiroSizeFont: value ? 25 : 30,
                        segundoFontColor: AppColors.dartk10,
                        segundoSizeFont: 30,
                      ),
                    ),
                  ),
                ],
              ),
              DSGaps.v32,
              ValueListenableBuilder(
                valueListenable: isOpen,
                builder: (context, value, child) {
                  //menu is open
                  if (value) {
                    return Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: isSelect,
                        builder: (context, value, child) {
                          return ListView.separated(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  if (items[index]['text'] == 'Desconectar') {
                                    return;
                                  }
                                  isSelectedMenu(items[index]['text']);
                                },
                                child: Container(
                                  height: 35.h,
                                  decoration:
                                      items[index]['text'] == 'Desconectar'
                                          ? BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color.fromARGB(
                                                  73, 244, 67, 54))
                                          : value == items[index]['text']
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: const Color.fromARGB(
                                                      68, 158, 110, 254))
                                              : null,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      DSGaps.h2,
                                      Icon(
                                        items[index]['icon'],
                                        color: items[index]['text'] ==
                                                'Desconectar'
                                            ? Colors.red
                                            : value == items[index]['text']
                                                ? AppColors.brandColor
                                                : AppColors.dartk10,
                                      ),
                                      DSGaps.h4,
                                      Text(items[index]['text'],
                                          maxLines: 1,
                                          style:
                                              AppTypography.defaultTypoGraphy(
                                                  color: items[index]['text'] ==
                                                          'Desconectar'
                                                      ? Colors.red
                                                      : value ==
                                                              items[index]
                                                                  ['text']
                                                          ? AppColors.brandColor
                                                          : AppColors.dartk10,
                                                  fontSize: 15))
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return DSGaps.v24;
                            },
                            itemCount: items.length,
                          );
                        },
                      ),
                    );
                  }
                  //menu is closed
                  return Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: isSelect,
                      builder: (context, value, child) {
                        return ListView.separated(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 35.h,
                              decoration: items[index]['text'] == 'Desconectar'
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromARGB(73, 244, 67, 54))
                                  : value == items[index]['text']
                                      ? BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color.fromARGB(
                                              68, 158, 110, 254))
                                      : null,
                              child: ListTile(
                                leading: Icon(items[index]['icon'],
                                    color: items[index]['text'] == 'Desconectar'
                                        ? Colors.red
                                        : value == items[index]['text']
                                            ? AppColors.brandColor
                                            : AppColors.dartk10),
                                onTap: () {
                                  if (items[index]['text'] == 'Desconectar') {
                                    return;
                                  }
                                  isSelectedMenu(items[index]['text']);
                                },
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return DSGaps.v24;
                          },
                          itemCount: items.length,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
