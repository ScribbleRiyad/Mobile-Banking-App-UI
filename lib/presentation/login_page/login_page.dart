import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_button.dart';
import 'package:mobile_bank/widgets/custom_checkbox.dart';
import 'package:mobile_bank/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
  onTapTxtRemebermeForgetOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.minePageContainerScreen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _LoginPageState extends State<LoginPage>
    with AutomaticKeepAliveClientMixin<LoginPage> {
  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  bool isCheckbox = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 38, right: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgIllustrationBlueGray900212x212,
                                    height: getSize(212),
                                    width: getSize(212),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 78),
                                    child: Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailOneController,
                                    hintText: "xyz@gmail.com",
                                    margin: getMargin(left: 1, top: 1),
                                    textInputType: TextInputType.emailAddress,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 3,
                                            right: 1,
                                            bottom: 3),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorConstant.indigoA100,
                                                width: getHorizontalSize(1),
                                                strokeAlign:
                                                    strokeAlignCenter)),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkIndigoA100)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(26))),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Text("Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: passwordOneController,
                                    hintText: "xyz123",
                                    textInputAction: TextInputAction.done,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 2,
                                            right: 1,
                                            bottom: 2),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorConstant.indigoA100,
                                                width: getHorizontalSize(1),
                                                strokeAlign:
                                                    strokeAlignCenter)),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkIndigoA100)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(26))),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomCheckbox(
                                              text: "Remember me",
                                              iconSize: getHorizontalSize(13),
                                              value: isCheckbox,
                                              margin: getMargin(bottom: 1),
                                              fontStyle: CheckboxFontStyle
                                                  .PoppinsRegular13,
                                              onChange: (value) {
                                                isCheckbox = value;
                                              }),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtRemebermeForgetOne(
                                                    context);
                                              },
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "Forget password?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium13)))
                                        ])),
                                CustomButton(
                                    height: getVerticalSize(50),
                                    text: "Login",
                                    margin: getMargin(top: 22),
                                    shape: ButtonShape.RoundedBorder13,
                                    onTap: () {
                                      onTapLogin(context);
                                    }),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 34, top: 69, right: 34),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "Don’t have an account?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16Bluegray400)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 1),
                                                  child: Text("Sign Up",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16))
                                            ])))
                              ]))
                    ])))));
  }

  onTapTxtRemebermeForgetOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.minePageContainerScreen);
  }
}
