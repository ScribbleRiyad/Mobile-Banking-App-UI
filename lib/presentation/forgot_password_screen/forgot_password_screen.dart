import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_button.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';
import 'package:mobile_bank/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrationBlueGray800,
                          height: getVerticalSize(210),
                          width: getHorizontalSize(280),
                          margin: getMargin(top: 66)),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Forget Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Container(
                          width: getHorizontalSize(245),
                          margin: getMargin(left: 41, top: 20, right: 41),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Please enter your email address to\nreceive a ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "verification code.",
                                    style: TextStyle(
                                        color: ColorConstant.indigoA100,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.center)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "xyz@gmail.com",
                          margin: getMargin(top: 25),
                          variant: TextFormFieldVariant.OutlineBluegray100,
                          shape: TextFormFieldShape.RoundedBorder13,
                          padding: TextFormFieldPadding.PaddingAll12,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Send Email",
                          margin: getMargin(top: 20, bottom: 5),
                          shape: ButtonShape.RoundedBorder13,
                          onTap: () {
                            onTapSendemail(context);
                          })
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSendemail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verifyEmailScreen);
  }
}
