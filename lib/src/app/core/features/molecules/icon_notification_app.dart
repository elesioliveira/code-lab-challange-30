import 'package:flutter/material.dart';

import '../atoms/tokens/app_colors.dart';

class IconNotificationApp extends StatelessWidget {
  const IconNotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Badge(
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
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.dartk40),
        ),
        icon: const Icon(
          Icons.notifications_none_outlined,
        ),
      ),
    );
  }
}
