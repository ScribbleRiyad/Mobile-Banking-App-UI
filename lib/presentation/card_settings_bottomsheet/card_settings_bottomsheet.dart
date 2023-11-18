import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CardSettingsBottomsheet extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 15, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Card",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 4, bottom: 4),
                                    onTap: () {
                                      onTapImgClose(context);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 15, top: 27, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorRedA700,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        iconSize: getHorizontalSize(15),
                                        value: "",
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 4, bottom: 4),
                                        isRightCheck: true,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorRedA70023x198,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding:
                                        getPadding(top: 5, right: 5, bottom: 4),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        iconSize: getHorizontalSize(15),
                                        value: "",
                                        groupValue: radioGroup1,
                                        margin: getMargin(
                                            top: 5, right: 5, bottom: 4),
                                        isRightCheck: true,
                                        onChange: (value) {
                                          radioGroup1 = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 15, bottom: 47),
                          padding: getPadding(
                              left: 15, top: 18, right: 15, bottom: 18),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorIndigoA10015x210,
                                    height: getVerticalSize(15),
                                    width: getHorizontalSize(210),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(top: 1, right: 5),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        value: "",
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 1, right: 5),
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }))
                              ]))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
