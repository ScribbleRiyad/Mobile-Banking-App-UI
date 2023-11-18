import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NationalbankItemWidget extends StatelessWidget {
  NationalbankItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillTeal80026,
          shape: IconButtonShape.RoundedBorder13,
          padding: IconButtonPadding.PaddingAll15,
          child: CustomImageView(
            svgPath: ImageConstant.imgFolder,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 6,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14Black900,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowdownGray90001,
                    height: getVerticalSize(
                      5,
                    ),
                    width: getHorizontalSize(
                      10,
                    ),
                    margin: getMargin(
                      left: 187,
                      top: 16,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium10Gray500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
