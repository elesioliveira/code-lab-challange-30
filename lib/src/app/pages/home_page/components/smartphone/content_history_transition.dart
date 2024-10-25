import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:challange_trinta/src/app/core/features/organisms/historico_transacao_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/features/atoms/tokens/gaps.dart';

class ContentHistoryTransition extends StatelessWidget {
  const ContentHistoryTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.w, left: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.dartk40),
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSGaps.v24,
          const ContentTile(data: 'Histórico de transações'),
          DSGaps.v12,
          const HistoricoDeTransacao(diaSemana: 'Ontem', valor: 'R\$ -540,32'),
          DSGaps.v12,
          const HistoricoDeTransacao(
              diaSemana: 'Quinta-Feira', valor: 'R\$ -273,90'),
          DSGaps.v12,
          const HistoricoDeTransacao(
              diaSemana: 'Segunda-Feira', valor: 'R\$ -1.456,20'),
          DSGaps.v24,
        ],
      ),
    );
  }
}
