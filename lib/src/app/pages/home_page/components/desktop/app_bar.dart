import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_typography.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/features/atoms/tokens/app_colors.dart';
import '../../../../core/features/atoms/tokens/gaps.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, this.spacingLeftTop});
  final double? spacingLeftTop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: spacingLeftTop ?? 0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá, Iuri',
              style: AppTypography.defaultTypoGraphy(
                  fontSize: 5.sp, color: AppColors.dartk10),
            ),
            Text(
              'Aqui estão as informações sobre suas vendas.',
              style: AppTypography.defaultTypoGraphy(
                  fontSize: 16,
                  color: AppColors.dartk20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        IconButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all<Color>(AppColors.dartk40),
            ),
            onPressed: () {},
            icon: const Icon(Icons.search)),
        DSGaps.h4,
        Badge(
          largeSize: 7,
          alignment: const Alignment(0.2, -0.6),
          backgroundColor: AppColors.brandColor,
          label: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.brandColor,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all<Color>(AppColors.dartk40),
            ),
            icon: const Icon(
              Icons.notifications_none_outlined,
            ),
          ),
        ),
        DSGaps.h4,
        const CircleAvatar(
          backgroundImage: AssetImage('assets/perfil.png'),
        ),
        DSGaps.h2,
        ContentTile(
          data: 'Iuri Silva',
          fontWeight: FontWeight.w500,
          sizeFont: 3.sp,
        )
      ],
    );
  }
}
