import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:flutter/material.dart';

import '../../../../core/features/organisms/content_total.dart';

class ContenTotalIntoRowWidget extends StatelessWidget {
  const ContenTotalIntoRowWidget(
      {super.key,
      this.data,
      this.value,
      this.valueIcon,
      this.textIconColor,
      this.iconColor,
      this.icon,
      this.backGroundColorContent,
      required this.dataTwo,
      required this.valueTwo,
      required this.valueIconTwo,
      this.textIconColorTwo,
      this.iconColorTwo,
      this.iconTwo,
      this.backGroundColorContentTwo});
  final String? data;
  final String? value;
  final String? valueIcon;
  final Color? textIconColor;
  final Color? iconColor;
  final IconData? icon;
  final Color? backGroundColorContent;
  final String? dataTwo;
  final String? valueTwo;
  final String? valueIconTwo;
  final Color? textIconColorTwo;
  final Color? iconColorTwo;
  final IconData? iconTwo;
  final Color? backGroundColorContentTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ContentTotal(
            data: data ?? 'sem info',
            value: value ?? 'sem info',
            valueIcon: valueIcon ?? 'sem info',
            backGroundColorContent: backGroundColorContent,
            icon: icon,
            iconColor: iconColor,
            textIconColor: textIconColor,
          ),
        ),
        DSGaps.h4,
        Expanded(
          child: ContentTotal(
            data: dataTwo ?? 'sem info',
            value: valueTwo ?? 'sem info',
            valueIcon: valueIconTwo ?? 'sem info',
            backGroundColorContent: backGroundColorContentTwo,
            icon: iconTwo,
            iconColor: iconColorTwo,
            textIconColor: textIconColorTwo,
          ),
        ),
      ],
    );
  }
}
