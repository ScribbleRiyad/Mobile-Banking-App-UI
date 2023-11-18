import '../national_bank_page/widgets/nationalbank_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';

class NationalBankPage extends StatelessWidget {
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
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "National Bank"),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgVolumeBlack900,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 12, right: 24, bottom: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowdown,
                          height: getSize(98),
                          width: getSize(98),
                          margin: getMargin(top: 13)),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("-444.00",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium30)),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputer23x36,
                                    height: getVerticalSize(15),
                                    width: getHorizontalSize(23)),
                                CustomImageView(
                                    svgPath: ImageConstant.img1BlueGray400,
                                    height: getVerticalSize(4),
                                    width: getHorizontalSize(32),
                                    margin:
                                        getMargin(left: 19, top: 6, bottom: 5)),
                                CustomImageView(
                                    svgPath: ImageConstant.img1BlueGray400,
                                    height: getVerticalSize(4),
                                    width: getHorizontalSize(32),
                                    margin:
                                        getMargin(left: 10, top: 6, bottom: 5)),
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("4023",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium10Bluegray400)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("5534",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium10Bluegray400))
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("12:30 PM, 25 June 2022",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10)),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 1),
                                          child: Text("150",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium11)),
                                      Padding(
                                          padding: getPadding(top: 38),
                                          child: Text("100",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium11)),
                                      Padding(
                                          padding: getPadding(top: 39),
                                          child: Text("50",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium11)),
                                      Padding(
                                          padding: getPadding(top: 38),
                                          child: Text("0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium11))
                                    ]),
                                Container(
                                    height: getVerticalSize(157),
                                    width: getHorizontalSize(296),
                                    margin: getMargin(top: 6, bottom: 6),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGroup,
                                              height: getVerticalSize(156),
                                              width: getHorizontalSize(296),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(296),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo100))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroupGray200,
                                              height: getVerticalSize(151),
                                              width: getHorizontalSize(272),
                                              alignment: Alignment.center)
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 28),
                              child: Text("10,790.00 Total Purchases",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Gray500))),
                      Padding(
                          padding: getPadding(left: 1, top: 16),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return NationalbankItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
