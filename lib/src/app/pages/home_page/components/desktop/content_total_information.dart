import 'package:flutter/material.dart';

import '../../../../core/features/atoms/tokens/gaps.dart';
import '../../../../core/features/molecules/content_tile.dart';
import '../../../../core/features/organisms/historico_transacao_widget.dart';
import 'content_information.dart';
import '../../../../core/features/organisms/grafico_receitas.dart';

class ContentTotalInformation extends StatelessWidget {
  const ContentTotalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        ContentInformation(
          data: 'Total de vendas',
          value: 'R\$ 3.265,21',
          valueIcon: '  +11%',
          dataTwo: 'Total líquido',
          valueTwo: 'R\$ 2.825,58',
          valueIconTwo: ' +15%',
          backGroundColorContent: const Color.fromARGB(68, 76, 175, 79),
          children: [
            DSGaps.v24,
            const ContentTile(
              data: 'Gráfico de receitas',
            ),
            DSGaps.v12,
            const GraficoReceitas(),
            DSGaps.v24,
          ],
        ),
        DSGaps.h6,
        ContentInformation(
          data: 'Compras canceladas',
          value: 'R\$ 130,00',
          valueIcon: ' -80%',
          icon: Icons.trending_down_sharp,
          iconColor: Colors.red,
          textIconColor: Colors.red,
          backGroundColorContent: const Color.fromARGB(63, 244, 67, 54),
          textIconColorTwo: Colors.red,
          iconTwo: Icons.trending_down_sharp,
          iconColorTwo: Colors.red,
          backGroundColorContentTwo: const Color.fromARGB(63, 244, 67, 54),
          dataTwo: 'Rembolsos',
          valueTwo: 'R\$ 345,00',
          valueIconTwo: ' -78%',
          children: [
            DSGaps.v24,
            Row(
              children: [
                DSGaps.h4,
                const ContentTile(
                  data: 'Histórico de Transações',
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DSGaps.v16,
                const HistoricoDeTransacao(
                    diaSemana: 'Ontem', valor: 'R\$ -540,32'),
                DSGaps.v32,
                const HistoricoDeTransacao(
                    diaSemana: 'Quinta-feira', valor: 'R\$ -273,90'),
                DSGaps.v32,
                const HistoricoDeTransacao(
                    diaSemana: 'Segunda-feira', valor: 'R\$ -1.456,20'),
                DSGaps.v32,
              ],
            ),
          ],
        ),
      ],
    );
  }
}
