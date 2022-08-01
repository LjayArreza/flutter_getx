import 'package:flutter_getx/data/repositories/auth_repository_iml.dart';
import 'package:flutter_getx/domain/usecase/login_use_case.dart';
import 'package:flutter_getx/pages/login/controller/login.controller.dart';
import 'package:flutter_getx/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(UserRepository()),
    );
  }
}
