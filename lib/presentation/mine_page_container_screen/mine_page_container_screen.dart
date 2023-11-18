import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/mine_page/mine_page.dart';
import 'package:mobile_bank/presentation/national_bank_page/national_bank_page.dart';
import 'package:mobile_bank/presentation/statistics_tab_container_page/statistics_tab_container_page.dart';
import 'package:mobile_bank/widgets/custom_bottom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class MinePageContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.minePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomAppBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            }),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgQrcodeWhiteA700,
                    height: getVerticalSize(25.0),
                    width: getHorizontalSize(25.0))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lock:
        return AppRoutes.minePage;
      case BottomBarEnum.Checkmarkgray500:
        return AppRoutes.statisticsTabContainerPage;
      case BottomBarEnum.Computergray500:
        return AppRoutes.nationalBankPage;
      case BottomBarEnum.Searchgray5002:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.minePage:
        return MinePage();
      case AppRoutes.statisticsTabContainerPage:
        return StatisticsTabContainerPage();
      case AppRoutes.nationalBankPage:
        return NationalBankPage();
      default:
        return DefaultWidget();
    }
  }
}
