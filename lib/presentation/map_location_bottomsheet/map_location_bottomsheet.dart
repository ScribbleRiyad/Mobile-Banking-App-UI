import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_button.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MapLocationBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgElementGray20001,
                height: getVerticalSize(
                  4,
                ),
                width: getHorizontalSize(
                  30,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                      variant: IconButtonVariant.FillTeal80026,
                      shape: IconButtonShape.RoundedBorder13,
                      padding: IconButtonPadding.PaddingAll15,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "National Bank",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14Black900,
                          ),
                          Container(
                            width: getHorizontalSize(
                              118,
                            ),
                            margin: getMargin(
                              left: 1,
                              top: 6,
                            ),
                            child: Text(
                              "24084 Standard Dedeaux,\nKiln, United States",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium9Bluegray400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgClock15x15,
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "Working Hours",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 16,
                  right: 2,
                ),
                padding: getPadding(
                  top: 10,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineBlack9000c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Text(
                        "S",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium15Gray500,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        30,
                      ),
                      width: getHorizontalSize(
                        234,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgElementGray30015x234,
                            height: getVerticalSize(
                              15,
                            ),
                            width: getHorizontalSize(
                              234,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "M",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "T",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    30,
                                  ),
                                  width: getHorizontalSize(
                                    46,
                                  ),
                                  text: "W",
                                  margin: getMargin(
                                    left: 20,
                                  ),
                                  padding: ButtonPadding.PaddingAll3,
                                  fontStyle:
                                      ButtonFontStyle.PoppinsMedium15WhiteA700,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "T",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 38,
                                    top: 3,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    "F",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 5,
                      ),
                      child: Text(
                        "S",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCall,
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                      ),
                      child: Text(
                        "Phone Number",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "+1-123-456-7890      +1-123-456-7890",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium11Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgDownload15x18,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        18,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "Email Address",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "xyz@gmail.com",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium11Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMegaphone,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        13,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "Attendance",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgChat,
                height: getVerticalSize(
                  92,
                ),
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  top: 14,
                  bottom: 37,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
