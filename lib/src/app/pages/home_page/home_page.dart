import 'package:flutter/material.dart';

import '../../core/shared/templates/desktop_web.dart';
import '../../core/shared/templates/smartphone.dart';
import '../../core/shared/templates/table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 600) {
      return const SmartphoneLayout();
    } else if (screenSize.width < 1200) {
      return const TableLayout();
    } else {
      return const LayoutWebAndDesktop();
    }
  }
}
