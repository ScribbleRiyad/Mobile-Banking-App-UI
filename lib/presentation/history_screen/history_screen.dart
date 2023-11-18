import '../history_screen/widgets/listfire_item_widget.dart';
import '../history_screen/widgets/listvolume_item_widget.dart';
import '../history_screen/widgets/listwhatsapp_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 24, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "History"),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgSearchBlack9001,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("Today, 25 June",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ListfireItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("Yesterday",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListvolumeItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("20 June, 2022",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ListwhatsappItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
