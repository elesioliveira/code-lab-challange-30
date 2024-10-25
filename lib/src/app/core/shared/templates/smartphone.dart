import 'package:challange_trinta/src/app/core/extensions/screen_utils_extensions.dart';
import 'package:challange_trinta/src/app/core/features/atoms/tokens/gaps.dart';
import 'package:challange_trinta/src/app/core/features/molecules/content_tile.dart';
import 'package:flutter/material.dart';
import '../../../core/features/atoms/tokens/app_colors.dart';
import '../../features/organisms/content_total_smartphone.dart';
import '../../features/organisms/app_bar_small.dart';
import '../../../pages/home_page/components/tablet/grafico_receitas.dart';
import '../../../pages/home_page/components/smartphone/content_history_buyer.dart';
import '../../../pages/home_page/components/smartphone/content_history_transition.dart';

class SmartphoneLayout extends StatefulWidget {
  const SmartphoneLayout({super.key});

  @override
  State<SmartphoneLayout> createState() => _SmartphoneLayoutState();
}

class _SmartphoneLayoutState extends State<SmartphoneLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColor,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
          child: const AppBarSmall(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
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
                  ContentTile(
                    data: 'Olá, Iuri',
                    sizeFont: 20.sp,
                    fontWeight: FontWeight.w500,
                    dataColor: AppColors.dartk10,
                  ),
                  DSGaps.v4,
                  const ContentTile(
                    data: 'Aqui estão as informações',
                    fontWeight: FontWeight.w400,
                    dataColor: AppColors.dartk20,
                    sizeFont: 16,
                  ),
                  const ContentTile(
                    data: 'sobre suas vendas.',
                    fontWeight: FontWeight.w400,
                    dataColor: AppColors.dartk20,
                    sizeFont: 16,
                  ),
                  DSGaps.v24,
                  GraficoReceitasSmall(
                    sizeContent: 250.h,
                  ),
                  DSGaps.v24,
                  const ContentHistoryTransition(),
                  DSGaps.v24,
                  const ContentTotalSmartphone(
                    data: 'Total de vendas',
                    value: 'R\$ 3.265,21',
                    valueIcon: ' +11%',
                  ),
                  DSGaps.v12,
                  const ContentTotalSmartphone(
                    data: 'Total de vendas',
                    value: 'R\$ 2.285,58',
                    valueIcon: ' +15%',
                  ),
                  DSGaps.v12,
                  const ContentTotalSmartphone(
                    data: 'Compras canceladas',
                    value: 'R\$ 130,00',
                    valueIcon: ' -80%',
                    backGroundColorContent: Color.fromARGB(75, 244, 67, 54),
                    icon: Icons.trending_down_outlined,
                    iconColor: Colors.red,
                    textIconColor: Colors.red,
                  ),
                  DSGaps.v12,
                  const ContentTotalSmartphone(
                    data: 'Rembolsos',
                    value: 'R\$ 345,00',
                    valueIcon: ' -78%',
                    backGroundColorContent: Color.fromARGB(75, 244, 67, 54),
                    icon: Icons.trending_down_outlined,
                    iconColor: Colors.red,
                    textIconColor: Colors.red,
                  ),
                  DSGaps.v24,

                  //Histórico de compradores
                  const ContentHistoryBuyer(),
                  DSGaps.v24,
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
