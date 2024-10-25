import 'package:flutter/material.dart';

import '../atoms/tokens/app_colors.dart';

class IconButtonApp extends StatelessWidget {
  const IconButtonApp({super.key, this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.dartk40),
        ),
        onPressed: () {},
        icon: Icon(icon));
  }
}
