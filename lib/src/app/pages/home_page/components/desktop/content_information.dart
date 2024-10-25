import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:flutter/material.dart';

import 'conten_total_into_row_widget.dart';

class ContentInformation extends StatelessWidget {
  const ContentInformation(
      {super.key,
      required this.children,
      this.data,
      this.value,
      this.valueIcon,
      this.textIconColor,
      this.iconColor,
      this.icon,
      this.backGroundColorContent,
      this.dataTwo,
      this.valueTwo,
      this.valueIconTwo,
      this.textIconColorTwo,
      this.iconColorTwo,
      this.iconTwo,
      this.backGroundColorContentTwo});
  final List<Widget> children;
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
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.dartk40),
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: children),
          ),
          DSGaps.v12,
          ContenTotalIntoRowWidget(
            dataTwo: dataTwo,
            valueTwo: valueTwo,
            valueIconTwo: valueIconTwo,
            backGroundColorContentTwo: backGroundColorContentTwo,
            iconTwo: iconTwo,
            iconColorTwo: iconColorTwo,
            textIconColorTwo: textIconColorTwo,
            data: data,
            backGroundColorContent: backGroundColorContent,
            icon: icon,
            iconColor: iconColor,
            textIconColor: textIconColor,
            value: value,
            valueIcon: valueIcon,
          )
        ],
      ),
    );
  }
}
