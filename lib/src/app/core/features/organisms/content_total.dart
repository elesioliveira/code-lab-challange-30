import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:flutter/material.dart';

import '../atoms/tokens/app_colors.dart';
import '../atoms/tokens/gaps.dart';
import '../molecules/content_tile.dart';

class ContentTotal extends StatelessWidget {
  const ContentTotal(
      {super.key,
      required this.data,
      required this.value,
      this.textIconColor,
      required this.valueIcon,
      this.iconColor,
      this.icon,
      this.backGroundColorContent,
      this.sizeDataTile,
      this.sizeValueTile,
      this.paddingLeft});
  final String data;
  final String value;
  final Color? textIconColor;
  final String valueIcon;
  final Color? iconColor;
  final IconData? icon;
  final Color? backGroundColorContent;
  final double? sizeDataTile;
  final double? sizeValueTile;
  final double? paddingLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: paddingLeft ?? 3.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.dartk40),
      width: 50.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSGaps.v12,
          ContentTile(
            data: data,
            fontWeight: FontWeight.w500,
            sizeFont: sizeDataTile ?? 2.5.w,
          ),
          DSGaps.v8,
          ContentTile(
            data: value,
            sizeFont: sizeValueTile ?? 4.w,
          ),
          DSGaps.v12,
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: backGroundColorContent ??
                    const Color.fromARGB(70, 76, 175, 79)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DSGaps.h2,
                Icon(
                  icon ?? Icons.trending_up,
                  color: iconColor ?? Colors.green,
                ),
                Text(
                  valueIcon,
                  style: TextStyle(color: textIconColor ?? Colors.green),
                ),
                DSGaps.h2,
              ],
            ),
          ),
          DSGaps.v12,
        ],
      ),
    );
  }
}
