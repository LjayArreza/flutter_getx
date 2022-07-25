import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/core/common/reusable_components/custom_reusable_textfields.dart';
import 'package:flutter_getx/pages/register/controller/register.controller.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class RegistrationTextFields extends GetWidget<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          child: Column(
            children: [
              CustomReusableTextField(
                labelText: 'First name',
                hintText: 'Enter first name',
                keyboardtype: TextInputType.text,
                controller: controller.firstNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'First name is required';
                  } else {
                    return null;
                  }
                },
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.firstName,
              ),
              SizedBox(height: 20),
              CustomReusableTextField(
                labelText: 'Last name',
                hintText: 'Enter last name',
                keyboardtype: TextInputType.text,
                controller: controller.lastNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Last name is required';
                  } else {
                    return null;
                  }
                },
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.lastName,
              ),
              SizedBox(height: 20),
              CustomReusableTextField(
                labelText: 'Email',
                hintText: 'Enter email address',
                keyboardtype: TextInputType.emailAddress,
                controller: controller.emailController,
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'Email is required.'),
                    EmailValidator(
                        errorText: 'Email address must be in a valid format'),
                  ],
                ),
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.email,
              ),
              SizedBox(height: 20),
              CustomReusableTextField(
                labelText: 'Mobile',
                hintText: 'Enter mobile number',
                keyboardtype: TextInputType.text,
                controller: controller.mobileController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mobile number is required';
                  } else {
                    return null;
                  }
                },
                maxLength: 11,
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.mobile,
              ),
              SizedBox(height: 20),
              CustomReusableTextField(
                labelText: 'Username',
                hintText: 'Create username',
                keyboardtype: TextInputType.text,
                controller: controller.usernameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is required';
                  } else {
                    return null;
                  }
                },
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.username,
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
                onSaved: (input) => controller.password,
              ),
              SizedBox(height: 20),
              CustomReusableTextField(
                labelText: 'Confirm password',
                hintText: 'Enter your confirm password',
                isObscure: controller.isConfirmPasswordObscure.value,
                controller: controller.confirmPasswordController,
                validator: (value) {
                  if (value != controller.passwordController.text) {
                    return 'Password and confirm password did not match';
                  } else {
                    return null;
                  }
                },
                keyboardtype: TextInputType.text,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.isConfirmPasswordObscure(
                        !controller.isConfirmPasswordObscure.value);
                  },
                  icon: Icon(controller.isConfirmPasswordObscure.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
                onChange: (value) =>
                    (controller.isButtonActive(controller.isBtnEnable())),
                onSaved: (input) => controller.confirmPassword,
              ),
            ],
          ),
        );
      },
    );
  }
}
