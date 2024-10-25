import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:flutter/material.dart';
import '../../../core/features/atoms/tokens/app_colors.dart';
import '../../features/organisms/app_bar_small.dart';
import '../../../pages/home_page/components/tablet/content_total_information_small.dart';
import '../../../pages/home_page/components/tablet/grafico_receitas.dart';
import '../../../pages/home_page/components/tablet/content_history_buyer.dart';
import '../../../pages/home_page/components/tablet/content_history_transation.dart';

class TableLayout extends StatefulWidget {
  const TableLayout({super.key});

  @override
  State<TableLayout> createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColor,
      drawer: const Drawer(),
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
          child: const AppBarSmall(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSGaps.v12,
                  const ContentTile(
                    data: 'Olá, Iuri',
                    dataColor: AppColors.dartk10,
                    fontWeight: FontWeight.w500,
                  ),
                  DSGaps.v2,
                  const ContentTile(
                    data: 'Aqui estão as informações sobre suas vendas',
                    dataColor: AppColors.dartk20,
                    fontWeight: FontWeight.w300,
                  ),
                  DSGaps.v24,
                  const GraficoReceitasSmall(),
                  DSGaps.v24,
                  const ContentHistoryTransation(),
                  DSGaps.v24,
                  const ContentTotalInformationSmall(),
                  DSGaps.v24,
                  //Histórico de compradores
                  const ContentHistoryBuyer(),
                  DSGaps.v12,
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
