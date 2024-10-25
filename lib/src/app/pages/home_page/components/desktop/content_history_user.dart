import 'package:flutter/material.dart';

import '../../../../core/features/atoms/tokens/app_colors.dart';
import '../../../../core/features/atoms/tokens/gaps.dart';
import '../../../../core/features/organisms/content_buyer_history.dart';

class ContentHistoryUser extends StatelessWidget {
  const ContentHistoryUser({super.key, required this.contentSize});
  final double contentSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContentBuyerHistory(
          id: 'ID',
          dataColor: AppColors.dartk10,
          data: 'Data',
          nome: 'Nome',
          localizacao: 'Localização',
          valor: 'Valor',
          situacao: 'Situação',
          situation: false,
          contentSize: contentSize,
        ),
        DSGaps.v24,
        ContentBuyerHistory(
          id: '#12345',
          data: '02/08/2023',
          nome: 'Elesio Olivera',
          localizacao: 'Santa Catarina',
          valor: '15,00',
          situacao: 'Aprovado',
          contentSize: contentSize,
        ),
        DSGaps.v24,
        ContentBuyerHistory(
          id: '#67890',
          data: '03/08/2023',
          nome: 'Beatriz Rodrigues',
          localizacao: 'Salvador',
          valor: '15,00',
          situacao: 'Em análise',
          circularColorBackGround: Colors.yellowAccent,
          contentSize: contentSize,
        ),
      ],
    );
  }
}
