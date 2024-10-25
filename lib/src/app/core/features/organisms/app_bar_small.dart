import 'package:flutter/material.dart';

import '../atoms/tokens/gaps.dart';
import '../molecules/icon_button_app.dart';
import '../molecules/icon_notification_app.dart';

class AppBarSmall extends StatelessWidget {
  const AppBarSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const IconButtonApp(icon: Icons.search),
        DSGaps.h2,
        const IconNotificationApp(),
        DSGaps.h2,
        const CircleAvatar(backgroundImage: AssetImage('assets/perfil.png')),
        DSGaps.h4
      ],
    );
  }
}
