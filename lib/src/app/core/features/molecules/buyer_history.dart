import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:flutter/material.dart';

class BuyerHistory extends StatelessWidget {
  const BuyerHistory(
      {super.key,
      required this.data,
      this.dataColor,
      this.contentSize,
      this.sizeFont});
  final String data;
  final Color? dataColor;
  final double? contentSize;
  final double? sizeFont;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: contentSize,
      child: ContentTile(
        data: data,
        fontWeight: FontWeight.w500,
        sizeFont: sizeFont ?? 3.sp,
        dataColor: dataColor ?? AppColors.dartk10,
      ),
    );
  }
}
