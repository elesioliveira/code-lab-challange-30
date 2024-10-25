import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../pages/home_page/domain/entities/monthly_data.dart';
import '../atoms/tokens/app_colors.dart';

class GraficoReceitas extends StatelessWidget {
  const GraficoReceitas(
      {super.key, this.fontSizeCategoryAxis, this.fontSizeNumericAxis});
  final double? fontSizeCategoryAxis;
  final double? fontSizeNumericAxis;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
          majorGridLines:
              const MajorGridLines(width: 0), // Remove a grade do eixo X
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(width: 0),

          labelStyle: AppTypography.defaultTypoGraphy(
              fontSize: fontSizeCategoryAxis ?? 3.w,
              fontWeight: FontWeight.w400,
              color: AppColors.dartk20),
        ),
        primaryYAxis: NumericAxis(
          majorGridLines:
              const MajorGridLines(width: 0), // Remove a grade do eixo X
          axisLine: const AxisLine(width: 0),
          labelStyle: AppTypography.defaultTypoGraphy(
              fontSize: fontSizeNumericAxis ?? 3.w,
              fontWeight: FontWeight.w400,
              color: AppColors.dartk20),
          majorTickLines: const MajorTickLines(width: 0),
        ),
        series: [
          ColumnSeries<MonthlyData, String>(
            dataSource: getMonthlyData(),
            xValueMapper: (MonthlyData value, _) => value.month,
            yValueMapper: (MonthlyData valor, _) => valor.value,
            pointColorMapper: (MonthlyData data, _) {
              if (data.month == 'Out') {
                return AppColors.brandColor;
              } else {
                return AppColors.brandColorTransparant;
              }
            },
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          ),
        ],
      ),
    );
  }

  List<MonthlyData> getMonthlyData() {
    return [
      MonthlyData(month: 'Fev', value: 1200),
      MonthlyData(month: 'Mar', value: 1500),
      MonthlyData(month: 'Abr', value: 800),
      MonthlyData(month: 'Mai', value: 1800),
      MonthlyData(month: 'Jun', value: 1600),
      MonthlyData(month: 'Jul', value: 1200),
      MonthlyData(month: 'Ago', value: 1400),
      MonthlyData(month: 'Set', value: 500),
      MonthlyData(month: 'Out', value: 1700),
    ];
  }
}
