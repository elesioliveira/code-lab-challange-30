import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:flutter/material.dart';

import '../molecules/buyer_history.dart';

class ContentBuyerHistory extends StatelessWidget {
  const ContentBuyerHistory(
      {super.key,
      required this.id,
      required this.data,
      required this.nome,
      required this.localizacao,
      this.dataColor,
      required this.valor,
      required this.situacao,
      this.circularColorBackGround,
      this.situation = true,
      this.contentSize,
      this.sizeFont});
  final String id;
  final String data;
  final String nome;
  final String localizacao;
  final Color? dataColor;
  final String valor;
  final String situacao;
  final Color? circularColorBackGround;
  final bool situation;
  final double? contentSize;
  final double? sizeFont;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuyerHistory(
          data: id,
          dataColor: dataColor,
          contentSize: contentSize,
          sizeFont: sizeFont,
        ),
        BuyerHistory(
          data: data,
          dataColor: dataColor,
          contentSize: contentSize,
          sizeFont: sizeFont,
        ),
        BuyerHistory(
          data: nome,
          dataColor: dataColor,
          contentSize: contentSize,
          sizeFont: sizeFont,
        ),
        BuyerHistory(
          data: localizacao,
          dataColor: dataColor,
          contentSize: contentSize,
          sizeFont: sizeFont,
        ),
        BuyerHistory(
          data: valor,
          dataColor: dataColor,
          contentSize: contentSize,
          sizeFont: sizeFont,
        ),
        Builder(builder: (BuildContext context) {
          if (situation == true) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                    radius: 6,
                    backgroundColor: circularColorBackGround ?? Colors.green),
                DSGaps.h2,
                BuyerHistory(
                  data: situacao,
                  dataColor: dataColor,
                  contentSize: contentSize,
                  sizeFont: sizeFont,
                ),
              ],
            );
          } else {
            return BuyerHistory(
              data: situacao,
              dataColor: dataColor,
              contentSize: contentSize,
              sizeFont: sizeFont,
            );
          }
        }),
      ],
    );
  }
}
