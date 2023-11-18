import '../transfer_request_screen/widgets/listrectanglesixtythree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_button.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class TransferRequestScreen extends StatelessWidget {
  TextEditingController searchbarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 24, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Transfer Request"),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgVolumeBlack900,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(125),
                                text: "Transfer",
                                variant: ButtonVariant.FillDeeppurple300,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.PoppinsMedium14,
                                prefixWidget: Container(
                                    margin: getMargin(right: 9),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame244)),
                                onTap: () {
                                  onTapTransfer(context);
                                }),
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(125),
                                text: "Request",
                                variant: ButtonVariant.FillTeal300,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.PoppinsMedium14,
                                prefixWidget: Container(
                                    margin: getMargin(right: 8),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame245))),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                variant: IconButtonVariant.FillGray50,
                                shape: IconButtonShape.RoundedBorder7,
                                padding: IconButtonPadding.PaddingAll12,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgMore))
                          ]),
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: searchbarController,
                          hintText: "Search People...",
                          margin: getMargin(top: 20),
                          variant: SearchViewVariant.OutlineGray200,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 18, right: 15, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchbarController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("Contact People",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16Black900)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return ListrectanglesixtythreeItemWidget();
                              }))
                    ]))));
  }

  onTapTransfer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transferScreen);
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
