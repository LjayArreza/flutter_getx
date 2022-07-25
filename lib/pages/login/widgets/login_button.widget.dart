import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/core/common/constants.dart';
import 'package:flutter_getx/core/common/reusable_components/custom_solid_button.dart';
import 'package:flutter_getx/core/routes/app_pages.dart';
import 'package:flutter_getx/pages/login/controller/login.controller.dart';
import 'package:get/get.dart';

class LoginButton extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          child: CustomSolidButton(
            onPressed: controller.isButtonActive.value
                ? () => controller.loginUser()
                : () => null,
            buttonText: 'Login',
            textColor: Colors.white,
            fontWeight: FontWeight.bold,
            buttonStyle: ElevatedButton.styleFrom(
              primary: kSolidButtonColor,
            ),
          ),
        );
      },
    );
  }
}
