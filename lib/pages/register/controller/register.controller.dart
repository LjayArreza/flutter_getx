import 'package:flutter/material.dart';
import 'package:flutter_getx/repository/user.repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final registrationFormKey = GlobalKey<FormState>();
  RxBool isButtonActive = false.obs;
  RxBool isObscure = true.obs;
  RxBool isConfirmPasswordObscure = true.obs;
  RxString firstName = ''.obs;
  RxString lastName = ''.obs;
  RxString email = ''.obs;
  RxString mobile = ''.obs;
  RxString username = ''.obs;
  RxString password = ''.obs;
  RxString confirmPassword = ''.obs;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  final UserRepository userRepo;
  RegisterController(this.userRepo);

  bool isBtnEnable() {
    var isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text);
    var isMobileValid = mobileController.text.isNotEmpty;
    var isFirstNameValid = firstNameController.text.isNotEmpty;
    var isLastNameValid = lastNameController.text.isNotEmpty;
    var isUsernameValid = usernameController.text.isNotEmpty;
    var isPasswordValid = passwordController.text.isNotEmpty;
    var isConfirmPasswordValid =
        confirmPasswordController.text == passwordController.text;

    return (isEmailValid &&
        isMobileValid &&
        isFirstNameValid &&
        isLastNameValid &&
        isUsernameValid &&
        isPasswordValid &&
        isConfirmPasswordValid);
  }

  bool _validate() {
    final form = registrationFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
