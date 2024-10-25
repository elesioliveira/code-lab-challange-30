import 'package:flutter/material.dart';

import '../atoms/tokens/app_typography.dart';

class TextRichApp extends StatelessWidget {
  const TextRichApp({
    super.key,
    required this.textoInicial,
    required this.segundoTexto,
    this.primeiroSizeFont,
    this.primeiroFontColor,
    this.segundoSizeFont,
    this.segundoFontColor,
  });
  final String textoInicial;
  final String segundoTexto;
  final double? primeiroSizeFont;
  final Color? primeiroFontColor;
  final double? segundoSizeFont;
  final Color? segundoFontColor;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 1,
      textAlign: TextAlign.start,
      TextSpan(
        text: textoInicial, // Texto inicial

        style: AppTypography.defaultTypoGraphy(
            fontSize: primeiroSizeFont,
            color: primeiroFontColor), // Estilo geral
        children: <TextSpan>[
          TextSpan(
            text: segundoTexto, // Segunda parte do texto
            style: AppTypography.defaultTypoGraphy(
                fontSize: segundoSizeFont,
                color: segundoFontColor), // Estilo geral
          ),
        ],
      ),
    );
  }
}
