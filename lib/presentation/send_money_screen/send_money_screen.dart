import '../send_money_screen/widgets/listellipse311_item_widget.dart';
import '../send_money_screen/widgets/listone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_button.dart';
import 'package:mobile_bank/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class SendMoneyScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Send Money"),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgGlobe,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Listellipse311ItemWidget();
                          }),
                      Padding(
                          padding: getPadding(top: 42),
                          child: Text("Enter your account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Bluegray400)),
                      Padding(
                          padding: getPadding(left: 44, top: 18, right: 45),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1,500.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium30),
                                CustomDropDown(
                                    width: getHorizontalSize(70),
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 10, right: 14),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorConstant.gray500,
                                                width: getHorizontalSize(1),
                                                strokeAlign:
                                                    strokeAlignCenter)),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownGray500)),
                                    hintText: "USD",
                                    margin:
                                        getMargin(left: 27, top: 7, bottom: 7),
                                    items: dropdownItemList,
                                    onChanged: (value) {})
                              ])),
                      Container(
                          height: getVerticalSize(229),
                          width: getHorizontalSize(325),
                          margin: getMargin(top: 46, bottom: 2),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 46, right: 45),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 4),
                                              child: ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            23));
                                                  },
                                                  itemCount: 3,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListoneItemWidget();
                                                  })),
                                          Padding(
                                              padding: getPadding(top: 26),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text("0",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium20),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleftGray900,
                                                        height:
                                                            getVerticalSize(10),
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        margin: getMargin(
                                                            left: 95,
                                                            top: 10,
                                                            bottom: 9))
                                                  ]))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgElementGray200,
                                height: getVerticalSize(229),
                                width: getHorizontalSize(325),
                                alignment: Alignment.center)
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Send Money  ",
                margin: getMargin(left: 24, right: 24, bottom: 36))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
