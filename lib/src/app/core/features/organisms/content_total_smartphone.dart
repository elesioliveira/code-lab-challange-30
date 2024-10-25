import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:flutter/material.dart';

import '../atoms/tokens/app_colors.dart';
import 'content_total.dart';

class ContentTotalSmartphone extends StatelessWidget {
  const ContentTotalSmartphone(
      {super.key,
      required this.data,
      required this.value,
      required this.valueIcon,
      this.backGroundColorContent,
      this.icon,
      this.iconColor,
      this.textIconColor});
  final String data;
  final String value;
  final String valueIcon;
  final Color? backGroundColorContent;
  final IconData? icon;
  final Color? iconColor;
  final Color? textIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.dartk40),
      child: ContentTotal(
        paddingLeft: 10.w,
        data: data,
        value: value,
        valueIcon: valueIcon,
        sizeDataTile: 15.sp,
        sizeValueTile: 20.sp,
        backGroundColorContent: backGroundColorContent,
        icon: icon,
        iconColor: iconColor,
        textIconColor: textIconColor,
      ),
    );
  }
}
