import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/app/config/constants.dart';
import 'package:flutter_getx/app/core/reusable_components/custom_outlined_button.dart';
import 'package:flutter_getx/app/core/reusable_components/custom_solid_button.dart';
import 'package:flutter_getx/app/core/routes/app_pages.dart';
import 'package:get/get.dart';

class LandingLoginButton extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSolidButton(
          onPressed: () {
            Get.toNamed(Routes.LOGIN);
          },
          buttonText: 'Login',
          textColor: Colors.white,
          fontWeight: FontWeight.w700,
          buttonStyle: ElevatedButton.styleFrom(
            primary: kSolidButtonColor,
          ),
        ),
        SizedBox(height: 25),
        CustomOutlinedButton(
          onPressed: () {
            Get.toNamed(Routes.REGISTER);
          },
          buttonText: 'Register',
          textColor: Colors.black,
          fontWeight: FontWeight.w300,
          buttonStyle: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: kSolidButtonColor,
            ),
          ),
        ),
      ],
    );
  }
}
