import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/features/atoms/tokens/app_colors.dart';
import '../../../../core/features/atoms/tokens/gaps.dart';
import '../../../../core/features/molecules/content_tile.dart';
import '../../../../core/features/organisms/grafico_receitas.dart';

class GraficoReceitasSmall extends StatelessWidget {
  const GraficoReceitasSmall({super.key, this.sizeContent});
  final double? sizeContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w, bottom: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.dartk40),
      width: double.maxFinite,
      height: sizeContent ?? 300.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: const ContentTile(data: 'Gráfico de receitas'),
          ),
          DSGaps.v12,
          GraficoReceitas(
            fontSizeCategoryAxis: 7.sp,
            fontSizeNumericAxis: 7.sp,
          )
        ],
      ),
    );
  }
}
