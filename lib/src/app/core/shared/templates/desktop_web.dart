import 'package:flutter/material.dart';
import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import '../../../pages/home_page/components/desktop/app_bar.dart';
import '../../../pages/home_page/components/desktop/content_history_buyer.dart';
import '../../../pages/home_page/components/desktop/content_total_information.dart';
import '../../../pages/home_page/components/desktop/menu_app_desktop.dart';

class LayoutWebAndDesktop extends StatefulWidget {
  const LayoutWebAndDesktop({super.key});

  @override
  State<LayoutWebAndDesktop> createState() => _LayoutWebAndDesktopState();
}

class _LayoutWebAndDesktopState extends State<LayoutWebAndDesktop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: Row(
          children: [
            //Menu
            const MenuAppDesktop(),
            DSGaps.h32,
            //body
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    DSGaps.v12,
                    const AppBarWidget(),
                    DSGaps.v24,
                    //Gráfico e Transações
                    const ContentTotalInformation(),
                    DSGaps.v32,
                    //Histórico de compradores
                    const ContentHistoryBuyer(),
                    DSGaps.v12,
                  ],
                ),
              ),
            ),
            DSGaps.h32
          ],
        ),
      ),
    );
  }
}
