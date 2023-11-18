import '../currency_settings_bottomsheet/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';

class CurrencySettingsBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
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
                                Text("Currency",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 7),
                                    onTap: () {
                                      onTapImgClose(context);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 9, bottom: 44),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListItemWidget();
                              }))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
