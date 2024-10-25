import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:flutter/material.dart';
import '../atoms/tokens/app_colors.dart';
import '../atoms/tokens/app_typography.dart';
import '../atoms/tokens/gaps.dart';

class HistoricoDeTransacao extends StatelessWidget {
  const HistoricoDeTransacao(
      {super.key, required this.diaSemana, required this.valor});
  final String diaSemana;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.brandTransparant,
      ),
      child: Row(
        children: [
          DSGaps.h4,
          Text(diaSemana,
              style: AppTypography.defaultTypoGraphy(
                  fontSize: 16,
                  color: AppColors.brandColor,
                  fontWeight: FontWeight.w500)),
          const Expanded(child: SizedBox()),
          Text(valor,
              style: AppTypography.defaultTypoGraphy(
                  fontSize: 16,
                  color: AppColors.brandColor,
                  fontWeight: FontWeight.w500)),
          DSGaps.h16
        ],
      ),
    );
  }
}
