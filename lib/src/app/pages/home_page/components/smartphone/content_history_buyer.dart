import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:challange_trinta/src/app/core/features/organisms/content_buyer_history.dart';
import 'package:flutter/material.dart';

class ContentHistoryBuyer extends StatelessWidget {
  const ContentHistoryBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.w),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.dartk40),
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                DSGaps.v24,
                const ContentTile(data: 'Histórico de compradores'),
                DSGaps.v12,
                ContentBuyerHistory(
                  id: 'ID',
                  data: 'Data',
                  nome: 'Nome',
                  localizacao: 'Localização',
                  valor: 'Valor',
                  situacao: 'Situação',
                  contentSize: 150.w,
                  situation: false,
                  sizeFont: 12.sp,
                ),
                DSGaps.v12,
                ContentBuyerHistory(
                  id: '#12345',
                  data: '02/08/2023',
                  nome: 'Elesio Oliveira',
                  localizacao: 'Santa Catarina',
                  valor: '15,00 ',
                  situacao: 'Aprovado',
                  contentSize: 150.w,
                  situation: true,
                  sizeFont: 12.sp,
                  dataColor: AppColors.dartk20,
                ),
                DSGaps.v12,
                ContentBuyerHistory(
                  id: '#67890',
                  data: '03/08/2023',
                  nome: 'Beatriz Rodrigues',
                  localizacao: 'Santa Catarina',
                  valor: '15,00 ',
                  situacao: 'Em análise',
                  circularColorBackGround: Colors.yellowAccent,
                  dataColor: AppColors.dartk20,
                  contentSize: 150.w,
                  situation: true,
                  sizeFont: 12.sp,
                ),
                DSGaps.v24,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
