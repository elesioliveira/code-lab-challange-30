import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:challange_trinta/src/app/pages/home_page/components/desktop/content_history_user.dart';
import 'package:flutter/material.dart';

import '../../controller/controller_menu.dart';
import '../../../../core/features/atoms/tokens/app_colors.dart';

class ContentHistoryBuyer extends StatelessWidget {
  const ContentHistoryBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isOpen,
        builder: (context, value, child) {
          return Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.dartk40),
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                DSGaps.v24,
                ContentTile(
                  data: 'Histórico de compradores',
                  fontWeight: FontWeight.w500,
                  sizeFont: 4.sp,
                ),
                DSGaps.v12,
                ContentHistoryUser(
                  contentSize: value ? 35.w : 40.w,
                ),
                DSGaps.v24,
              ],
            ),
          );
        });
  }
}
