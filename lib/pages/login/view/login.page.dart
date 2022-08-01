import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/presentation/controllers/login/login.controller.dart';
import 'package:flutter_getx/pages/login/widgets/login_button.widget.dart';
import 'package:flutter_getx/pages/login/widgets/login_dont_have_account.widget.dart';
import 'package:flutter_getx/pages/login/widgets/login_forgot_password_button.widget.dart';
import 'package:flutter_getx/pages/login/widgets/login_header.widget.dart';
import 'package:flutter_getx/pages/login/widgets/login_textfields.widget.dart';
import 'package:get/get.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ProgressHUD(
          inAsyncCall: controller.isAPILoading.value,
          key: UniqueKey(),
          opacity: 0.3,
          child: Form(
            key: controller.loginFormKey,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      LoginHeader(),
                      SizedBox(height: 50),
                      LoginTextFields(),
                      SizedBox(height: 30),
                      LoginButton(),
                      SizedBox(height: 20),
                      LoginForgotPasswordButton(),
                      SizedBox(height: 20),
                      LoginDontHaveAccount(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
