import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigoA100,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 74,
            right: 74,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  right: 19,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVideocamera,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        37,
                      ),
                      margin: getMargin(
                        top: 9,
                        bottom: 8,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 14,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "SAFEBANK",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtProximaNovaABold28.copyWith(
                                letterSpacing: getHorizontalSize(
                                  1.82,
                                ),
                              ),
                            ),
                            Text(
                              "we serve with faith".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  1.6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
