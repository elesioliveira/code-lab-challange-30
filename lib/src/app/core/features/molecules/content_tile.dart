import 'package:flutter/material.dart';

import '../atoms/tokens/app_colors.dart';
import '../atoms/tokens/app_typography.dart';

class ContentTile extends StatelessWidget {
  const ContentTile(
      {super.key,
      required this.data,
      this.sizeFont,
      this.fontWeight,
      this.dataColor});
  final String data;
  final double? sizeFont;
  final FontWeight? fontWeight;
  final Color? dataColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.start,
      style: AppTypography.defaultTypoGraphy(
          fontSize: sizeFont ?? 18,
          color: dataColor ?? AppColors.dartk10,
          fontWeight: fontWeight),
    );
  }
}
