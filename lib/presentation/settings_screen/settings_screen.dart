import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_button.dart';

class SettingsScreen extends StatelessWidget {
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
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Settings"),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgGlobe,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(92),
                          width: getHorizontalSize(80),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getSize(80),
                                        width: getSize(80),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse31470x70,
                                                  height: getSize(70),
                                                  width: getSize(70),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(35)),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: getSize(80),
                                                      width: getSize(80),
                                                      child:
                                                          CircularProgressIndicator(
                                                              value: 0.5)))
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock25x25,
                                    height: getSize(25),
                                    width: getSize(25),
                                    alignment: Alignment.bottomCenter)
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("Alex Dordan",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("Web Developer",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSignal40x40,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 10, bottom: 5),
                                    child: Text("Change Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(4),
                                    margin: getMargin(top: 25, bottom: 7))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgUser40x40,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 7, bottom: 8),
                                    child: Text("Notification",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                Container(
                                    margin: getMargin(top: 13, bottom: 13),
                                    padding: getPadding(all: 4),
                                    decoration: AppDecoration.fillIndigoA100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder7),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(6),
                                              width: getSize(6),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              3))))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark1,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 7, bottom: 8),
                                    child: Text("Invite Friends & Business",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(4),
                                    margin: getMargin(top: 16, bottom: 16))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgRewind,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 9, bottom: 6),
                                    child: Text("Privacy & Policy",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(4),
                                    margin: getMargin(top: 16, bottom: 16))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray200)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgIcon40x40,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 9, bottom: 6),
                                    child: Text("FAQs",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(4),
                                    margin: getMargin(top: 16, bottom: 16))
                              ])),
                      Padding(
                          padding: getPadding(top: 20, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCamera,
                                    height: getSize(40),
                                    width: getSize(40)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 7, bottom: 8),
                                    child: Text("Terms & Conditions",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(4),
                                    margin: getMargin(top: 16, bottom: 16))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Log Out",
                margin: getMargin(left: 20, right: 30, bottom: 52),
                padding: ButtonPadding.PaddingT13,
                prefixWidget: Container(
                    margin: getMargin(right: 14),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgIconWhiteA7001)))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
