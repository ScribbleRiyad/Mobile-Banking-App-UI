import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_button.dart';

class TransferAmountScreen extends StatelessWidget {
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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Transfer Amount")),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 25, top: 25, right: 25),
                          padding: getPadding(
                              left: 20, top: 26, right: 20, bottom: 26),
                          decoration: AppDecoration.outlineBlack900112.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 10, bottom: 11),
                                          child: Text("To",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium12Black900)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31140x401,
                                          height: getSize(40),
                                          width: getSize(40),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(20)),
                                          margin: getMargin(left: 14)),
                                      Padding(
                                          padding: getPadding(
                                              left: 14, top: 1, bottom: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Marlee Rice",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14Black900),
                                                Text("ID: 14345112075",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium10Gray500)
                                              ]))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray200)),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("Amount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Black900)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 5),
                                        child: Text("0",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsMedium30))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 8),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Available Balance:",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray500,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "3,230.00",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .indigoA100,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ]),
                                            textAlign: TextAlign.left)))
                              ])),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Send Money  ",
                margin: getMargin(left: 24, right: 24, bottom: 34),
                onTap: () {
                  onTapSendmoney(context);
                })));
  }

  onTapSendmoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
