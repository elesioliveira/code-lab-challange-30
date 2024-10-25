import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/features/atoms/tokens/gaps.dart';
import '../../../../core/features/organisms/content_total.dart';

class ContentTotalInformationSmall extends StatelessWidget {
  const ContentTotalInformationSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: ContentTotal(
                  paddingLeft: 10.w,
                  data: 'Total de vendas',
                  value: 'R\$ 3.265,21',
                  valueIcon: ' +11%',
                  sizeDataTile: 5.sp,
                  sizeValueTile: 10.sp,
                ),
              ),
              DSGaps.h12,
              Expanded(
                child: ContentTotal(
                  paddingLeft: 10.w,
                  data: 'Compras canceladas',
                  value: 'R\$ 2.825,58',
                  valueIcon: ' +15%',
                  sizeDataTile: 5.sp,
                  sizeValueTile: 10.sp,
                ),
              )
            ],
          ),
          DSGaps.v12,
          Row(
            children: [
              Expanded(
                child: ContentTotal(
                  paddingLeft: 10.w,
                  data: 'Compras canceladas',
                  value: 'R\$ 130,00',
                  valueIcon: ' -80%',
                  sizeDataTile: 5.sp,
                  sizeValueTile: 10.sp,
                  icon: Icons.trending_down_outlined,
                  iconColor: Colors.red,
                  backGroundColorContent: const Color.fromARGB(74, 244, 67, 54),
                  textIconColor: Colors.red,
                ),
              ),
              DSGaps.h12,
              Expanded(
                child: ContentTotal(
                  paddingLeft: 10.w,
                  data: 'Compras canceladas',
                  value: 'R\$ 345,00',
                  valueIcon: ' -78%',
                  sizeDataTile: 5.sp,
                  sizeValueTile: 10.sp,
                  icon: Icons.trending_down_outlined,
                  iconColor: Colors.red,
                  backGroundColorContent: const Color.fromARGB(74, 244, 67, 54),
                  textIconColor: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
