import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/app/config/constants.dart';
import 'package:flutter_getx/app/core/reusable_components/custom_solid_button.dart';

import 'package:flutter_getx/presentation/controllers/login/login.controller.dart';
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
