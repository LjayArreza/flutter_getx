import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/app/core/reusable_components/custom_reusable_textfields.dart';
import 'package:flutter_getx/presentation/controllers/login/login.controller.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class LoginTextFields extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        child: Column(
          children: [
            CustomReusableTextField(
              labelText: 'Email address',
              hintText: 'Enter email address',
              controller: controller.emailController,
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: 'Email is required.'),
                  EmailValidator(
                      errorText: 'Email address must be in a valid format'),
                ],
              ),
              keyboardtype: TextInputType.emailAddress,
              onChange: (value) =>
                  (controller.isButtonActive(controller.isBtnEnable())),
              onSaved: (input) => controller.email,
            ),
            SizedBox(height: 20),
            CustomReusableTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
                isObscure: controller.isObscure.value,
                controller: controller.passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required.';
                  } else {
                    return null;
                  }
                },
                keyboardtype: TextInputType.text,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.isObscure(!controller.isObscure.value);
                  },
                  icon: Icon(controller.isObscure.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.password),
          ],
        ),
      );
    });
  }
}
