import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/login_page/login_page.dart';
import 'package:mobile_bank/presentation/sign_up_page/sign_up_page.dart';

class LoginPageTabContainerScreen extends StatefulWidget {
  @override
  _LoginPageTabContainerScreenState createState() =>
      _LoginPageTabContainerScreenState();
}

class _LoginPageTabContainerScreenState
    extends State<LoginPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController loginsignupController;

  @override
  void initState() {
    super.initState();
    loginsignupController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  40,
                ),
                width: getHorizontalSize(
                  161,
                ),
                margin: getMargin(
                  left: 24,
                  top: 30,
                ),
                child: TabBar(
                  controller: loginsignupController,
                  labelColor: ColorConstant.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: ColorConstant.gray500,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    color: ColorConstant.indigoA100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Login",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sign Up",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  698,
                ),
                child: TabBarView(
                  controller: loginsignupController,
                  children: [
                    LoginPage(),
                    SignUpPage(),
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
