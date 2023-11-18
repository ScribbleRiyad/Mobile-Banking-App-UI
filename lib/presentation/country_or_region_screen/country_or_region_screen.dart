import '../country_or_region_screen/widgets/listunitedkingdom_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class CountryOrRegionScreen extends StatelessWidget {
  TextEditingController frame225Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: frame225Controller,
                          hintText: "Search Country...",
                          margin: getMargin(top: 31),
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 17, right: 15, bottom: 17),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.gray500,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearchGray5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    frame225Controller.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(left: 1, top: 31),
                          child: Text("Country or Region",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return ListunitedkingdomItemWidget();
                              }))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
